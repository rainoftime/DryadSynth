import java.util.*;

import com.microsoft.z3.*;

public class DnCEnv extends CEGISEnv {
    public Expr dncBaseExpr = null;
    public Expr[] dncBaseArgs = null;
    public Map<Expr, Set<Expr[]>> dncCEs = new HashMap<Expr, Set<Expr[]>>();
    public Map<Expr, DnCProblem> dncPblms = new HashMap<Expr, DnCProblem>();
    public Set<String> interResultNames = new HashSet<String>();
    public Map<String, DefinedFunc> interResults = new HashMap<String, DefinedFunc>();

    public void scanSubExprs() {
        this.scanSubExprs(dncBaseExpr);
    }

    public void scanSubExprs(Expr expr) {
        if (expr != dncBaseExpr && isValidSub(expr)) {
            if (!dncCEs.containsKey(expr)) {
                dncCEs.put(expr, new HashSet<Expr[]>());
                // Create subProblem for this subExpr
                DnCProblem subPblm = ((DnCProblem) problem).createSubProblem(expr, dncBaseArgs);

                // Add subPblm names to interResultNames
                String name = subPblm.names.get(0);
                interResultNames.add(name);

                dncPblms.put(expr, subPblm);
            }
        }
        for (Expr child : expr.getArgs()) {
            scanSubExprs(child);
        }
    }

    public String scanInterResults(ASTGeneral ast) {
        String nodeName = ast.node;
        if (interResultNames.contains(nodeName)) {
            return nodeName;
        } else {
            for (ASTGeneral child : ast.children) {
                nodeName = scanInterResults(child);
                if (nodeName != null) {
                    return nodeName;
                }
            }
        }
        return null;
    }

    boolean isValidSub(Expr expr) {
        return expr.isITE();
    }

    void addSubSolutionToAll(DefinedFunc df) {
        synchronized (this.problem) {
            ((DnCProblem) this.problem).addSubSolution(df.translate(this.problem.ctx));
        }
        for (Expr expr : dncPblms.keySet()) {
            DnCProblem pblm = dncPblms.get(expr);
            synchronized (pblm) {
                pblm.addSubSolution(df.translate(pblm.ctx));
            }
        }
    }
}
