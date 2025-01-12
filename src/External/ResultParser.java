import java.util.*;

import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;
import com.microsoft.z3.*;

public class ResultParser extends SygusBaseListener {
    public DefinedFunc[] results;

    boolean inFuncDef = false;
    boolean currentOnArgList = false;
    Map<String, Expr> defFuncVars = null;
    Map<String, DefinedFunc> funcs = new LinkedHashMap<String, DefinedFunc>();
    Stack<Object> termStack = new Stack<Object>();
    Stack<Object> astStack = new Stack<Object>();

    Context z3ctx;
    OpDispatcher opDis;

    public ResultParser(Context z3ctx, OpDispatcher opDis) {
        this.z3ctx = z3ctx;
        this.opDis = opDis;
    }

    public void exitStart(SygusParser.StartContext ctx) {
        results = funcs.values().toArray(new DefinedFunc[funcs.size()]);
    }

    public void enterArgList(SygusParser.ArgListContext ctx) {
        currentOnArgList = true;
    }

    public void exitArgList(SygusParser.ArgListContext ctx) {
        currentOnArgList = false;
    }

    public void enterSymbolSortPair(SygusParser.SymbolSortPairContext ctx) {
        if (currentOnArgList) {
            Sort type = strToSort(ctx.sortExpr().getText());
            String name = ctx.symbol().getText();
            if (inFuncDef) {
                defFuncVars.put(name, z3ctx.mkConst(name, type));
            }
        }
    }

    public void enterFunDefCmd(SygusParser.FunDefCmdContext ctx) {
        inFuncDef = true;
        defFuncVars = new LinkedHashMap<String, Expr>();
    }

    public void exitFunDefCmd(SygusParser.FunDefCmdContext ctx) {
        String name = ctx.symbol().getText();
        Expr[] argList = defFuncVars.values().toArray(new Expr[defFuncVars.size()]);
        Expr def = (Expr) termStack.pop();
        ASTGeneral ast = (ASTGeneral) astStack.pop();
        String[] strArgs = new String[argList.length];
        for (int i = 0; i < strArgs.length; i++) {
            strArgs[i] = argList[i].toString();
        }
        DefinedFunc func = new DefinedFunc(z3ctx, name, argList, def, strArgs, ast);
        funcs.put(name, func);
        inFuncDef = false;
    }

    Sort strToSort(String name) {
        Sort sort;
        switch (name) {
            case "Int":
                sort = z3ctx.getIntSort();
                break;
            case "Bool":
                sort = z3ctx.getBoolSort();
                break;
            case "Real":
                sort = z3ctx.getRealSort();
                break;
            default:
                sort = null;
        }
        return sort;
    }

    public void enterTerm(SygusParser.TermContext ctx) {
        if (inFuncDef) {
            int numChildren = ctx.getChildCount();
            if (numChildren == 1) {
                if (ctx.symbol() != null) {
                    String name = ctx.symbol().getText();
                    Expr var = defFuncVars.get(name);
                    termStack.push(var);
                    ASTGeneral terminal = new ASTGeneral(name);
                    astStack.push(terminal);
                } else if (ctx.literal() != null) {
                    termStack.push(literalToExpr(ctx.literal()));
                    ASTGeneral terminal = new ASTGeneral(literalToStr(ctx.literal()));
                    astStack.push(terminal);
                }
            } else {
                termStack.push(ctx);
                astStack.push(ctx);
            }
        }
    }

    String literalToStr(SygusParser.LiteralContext ctx) {
        if (ctx.intConst() != null) {
            return ctx.intConst().getText();
        }
        if (ctx.realConst() != null) {
            return ctx.realConst().getText();
        }
        if (ctx.boolConst() != null) {
            return ctx.boolConst().getText();
        }
        return null;
    }

    Expr literalToExpr(SygusParser.LiteralContext ctx) {
        if (ctx.intConst() != null) {
            return z3ctx.mkInt(ctx.intConst().getText());
        }
        if (ctx.realConst() != null) {
            return z3ctx.mkReal(ctx.realConst().getText());
        }
        if (ctx.boolConst() != null) {
            return ctx.boolConst().getText().equals("true") ? z3ctx.mkTrue() : z3ctx.mkFalse();
        }
        return null;
    }

    public void exitTerm(SygusParser.TermContext ctx) {
        if (inFuncDef) {
            if (ctx.getChildCount() != 1) {
                List<Expr> args = new ArrayList<Expr>();
                Object top = termStack.pop();
                while (top != ctx) {
                    args.add(0, (Expr) top);
                    top = termStack.pop();
                }
                String name = ctx.symbol().getText();
                Expr res = opDis.dispatch(name, args.toArray(new Expr[args.size()]), true, true);
                termStack.push(res);
                List<ASTGeneral> ast_list = new ArrayList<ASTGeneral>();
                Object ast_top = astStack.pop();
                while (ast_top != ctx) {
                    ast_list.add(0, (ASTGeneral) ast_top);
                    ast_top = astStack.pop();
                }
                ASTGeneral tree = new ASTGeneral(name, ast_list.toArray(new ASTGeneral[ast_list.size()]));
                astStack.push(tree);
            }
        }
    }
}