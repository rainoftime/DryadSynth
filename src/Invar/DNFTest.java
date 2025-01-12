import java.util.*;

import com.microsoft.z3.*;
import com.microsoft.z3.enumerations.Z3_ast_print_mode;

public class DNFTest {
    public static void main(String[] args) {
        Context ctx = new Context();
        ctx.setPrintMode(Z3_ast_print_mode.Z3_PRINT_SMTLIB_FULL);
        ArithExpr w = (ArithExpr) ctx.mkConst("w", ctx.mkIntSort());
        ArithExpr a = (ArithExpr) ctx.mkConst("a", ctx.mkIntSort());
        ArithExpr b = (ArithExpr) ctx.mkConst("b", ctx.mkIntSort());
        ArithExpr c = (ArithExpr) ctx.mkConst("c", ctx.mkIntSort());
        BoolExpr x = (BoolExpr) ctx.mkConst("x", ctx.mkBoolSort());
        BoolExpr y = (BoolExpr) ctx.mkConst("y", ctx.mkBoolSort());
        BoolExpr z = (BoolExpr) ctx.mkConst("z", ctx.mkBoolSort());
        BoolExpr r = (BoolExpr) ctx.mkConst("r", ctx.mkBoolSort());
        BoolExpr p = (BoolExpr) ctx.mkConst("p", ctx.mkBoolSort());
        BoolExpr q = (BoolExpr) ctx.mkConst("q", ctx.mkBoolSort());

        // Expr e = ctx.mkNot(ctx.mkNot(ctx.mkGe(w, ctx.mkInt(2))));

        // Expr e = ctx.mkAnd(
        //         ctx.mkOr(
        //            x,
        //            y
        //           ),
        //         ctx.mkOr(
        //            z,
        //            r
        //           )
        //         );

        // Expr e = ctx.mkAnd(
        //         (BoolExpr)ctx.mkITE(
        //            x,
        //            y,
        //            z
        //           ),
        //         x
        //         );

        Expr e = ctx.mkAnd(
                ctx.mkNot((BoolExpr) ctx.mkITE(
                        x,
                        y,
                        z
                )),
                ctx.mkNot((BoolExpr) ctx.mkITE(
                        x,
                        y,
                        z
                ))
        );

        // Expr e = ctx.mkOr(ctx.mkNot(ctx.mkNot(ctx.mkOr(x, y))), ctx.mkNot(ctx.mkOr(ctx.mkAnd(y, z), ctx.mkNot(x))));

        System.out.println("Before converting:");
        System.out.println(e);

        Transf trans = new Transf(null, ctx);
        Expr eliminate = trans.eliminateImpEq(e);
        Expr pushneg = trans.pushNegIn(eliminate);
        System.out.println("After eliminating:");
        System.out.println(eliminate);
        System.out.println("After pushing:");
        System.out.println(pushneg);
        Expr dnf = trans.convertToDNF(e);
        System.out.println("After converting:");
        System.out.println(dnf);
        System.out.println(dnf.simplify());
        System.out.println("Simplified args length:");
        System.out.println(dnf.simplify().getArgs().length);

    }

}
