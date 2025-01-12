import com.microsoft.z3.*;

import java.util.*;

import com.microsoft.z3.enumerations.Z3_ast_print_mode;

public class RewriteTest {
    public static void main(String[] args) {
        Context ctx = new Context();
        ctx.setPrintMode(Z3_ast_print_mode.Z3_PRINT_SMTLIB_FULL);
        FuncDecl f = ctx.mkFuncDecl("f", new Sort[]{ctx.mkIntSort(), ctx.mkIntSort()}, ctx.mkIntSort());
        Expr x = ctx.mkConst("x", ctx.mkIntSort());
        Expr y = ctx.mkConst("y", ctx.mkIntSort());
        Expr x1 = ctx.mkConst("x1", ctx.mkIntSort());
        Expr x2 = ctx.mkConst("x2", ctx.mkIntSort());
        Expr x3 = ctx.mkConst("x3", ctx.mkIntSort());
        Expr x4 = ctx.mkConst("x4", ctx.mkIntSort());
        Expr def1 = ctx.mkDiv((ArithExpr) x, (ArithExpr) y);
        DefinedFunc func1 = new DefinedFunc(ctx, "f", new Expr[]{x, y}, def1);
        Expr def2 = ctx.mkAdd(ctx.mkDiv((ArithExpr) x, (ArithExpr) y), ctx.mkMul((ArithExpr) x, (ArithExpr) y));
        DefinedFunc func2 = new DefinedFunc(ctx, "f", new Expr[]{x, y}, def2);
        Expr expr = ctx.mkAnd(ctx.mkGt((ArithExpr) f.apply(x1, x2), ctx.mkInt(1)),
                ctx.mkGe((ArithExpr) f.apply(x3, ctx.mkSub((ArithExpr) x1, ctx.mkInt(2))), ctx.mkInt(3)),
                ctx.mkLt((ArithExpr) f.apply(x4, ctx.mkAdd((ArithExpr) x1, ctx.mkInt(3))), ctx.mkInt(-1)));
        BoolExpr rewritten1 = (BoolExpr) func1.rewrite(expr, f);
        BoolExpr rewritten2 = (BoolExpr) func2.rewrite(expr, f);
        System.out.println("Original :" + expr);
        System.out.println("Func Def :" + func1);
        System.out.println("Rewritten:" + rewritten1);
        System.out.println("Sort     :" + rewritten1.getSort());
        System.out.println("Func Def :" + func2);
        System.out.println("Rewritten:" + rewritten2);
        System.out.println("Sort     :" + rewritten2.getSort());
        System.out.println("Expr -x  :" + ctx.mkMul((ArithExpr) x, ctx.mkInt(-1)).simplify());
        System.out.println("NumCore  :" + Runtime.getRuntime().availableProcessors());
        Expr ite = ctx.mkITE(ctx.mkGt((ArithExpr) x3, (ArithExpr) x2), rewritten1, rewritten2);
        System.out.println("ITE      :" + ite);
        Expr iteElimed = SygusFormatter.elimITE(ctx, ite);
        System.out.println("ITE Elim :" + iteElimed);
        System.out.println("Splfied  :" + iteElimed.simplify());
        System.out.println();
        Expr a = ctx.mkConst("a", ctx.mkBoolSort());
        FuncDecl func = ctx.mkFuncDecl("func", new Sort[]{ctx.mkIntSort(), ctx.mkIntSort()}, ctx.mkBoolSort());
        Expr spec = ctx.mkAnd((BoolExpr) func.apply(x1, x2), (BoolExpr) func.apply(x3, x4));
        Expr def3 = ctx.mkAnd((BoolExpr) func.apply(x, y), (BoolExpr) a);
        DefinedFunc func3 = new DefinedFunc(ctx, "func", new Expr[]{x, y}, def3);
        BoolExpr rewritten3 = (BoolExpr) func3.rewrite(spec, func);
        System.out.println("Spec     :" + spec);
        System.out.println("Func Def :" + func3);
        System.out.println("Rewritten:" + rewritten3);
    }
}
