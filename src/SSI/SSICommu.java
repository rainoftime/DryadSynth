import java.util.*;
import com.microsoft.z3.*;
import java.util.logging.Logger;

public class SSICommu extends SSI {

    private FuncDecl func;
    private Expr commuCache[];

    public SSICommu(Context ctx, SygusExtractor extractor, Logger logger, int numCore) {
        super(ctx, extractor, logger, numCore);
        this.commuCache = null;
    }

    public void run() throws SSIException {
        if (extractor.names.size() > 1) {
            throw new SSIException();
        }

        this.name = extractor.names.get(0);
        this.func = extractor.rdcdRequests.get(name);

        Expr constrt = extractor.finalConstraint;
        logger.info("Constructing onesided constraint.");
        Expr sideConstrt = this.exchangeCommu(constrt).simplify();
        BoolExpr sideCondition = ctx.mkGe((ArithExpr)commuCache[0], (ArithExpr)commuCache[1]);
        sideConstrt = ctx.mkImplies(
                sideCondition,
                (BoolExpr)sideConstrt
                );
        logger.info("Onesided constraint:" + sideConstrt.toString());
        
        extractor.finalConstraint = (BoolExpr)sideConstrt;
        Expr onesideDef = this.getDef();
        logger.info("Onesided Result:" + onesideDef.toString());
        Expr tempExpr = ctx.mkFreshConst("temp", ctx.mkIntSort());
        Expr othersideDef = onesideDef.substitute(commuCache[0], tempExpr);
        othersideDef = othersideDef.substitute(commuCache[1], commuCache[0]);
        othersideDef = othersideDef.substitute(tempExpr, commuCache[1]);

        Expr def = ctx.mkITE(sideCondition, onesideDef, othersideDef);

        // Check result correctness
        //logger.info("Checking result correctness...");
        //Expr checkExpr = constrt.substitute(this.func.apply(this.commuCache), def);
        //Expr revDef = def.substitute(commuCache[0], tempExpr);
        //revDef = revDef.substitute(commuCache[1], commuCache[0]);
        //revDef = revDef.substitute(tempExpr, commuCache[1]);
        //checkExpr = checkExpr.substitute(this.func.apply(new Expr[] {this.commuCache[1],
        //                                                            this.commuCache[0]}), revDef);
        //Solver s = ctx.mkSolver();
        //s.add(ctx.mkNot((BoolExpr)checkExpr));
        //Status sat = s.check();
        //if (sat == Status.UNSATISFIABLE) {
        //    logger.info("Result is correct.");
        //} else {
        //    logger.severe("Result incorrect!");
        //}

        Expr defUsedArgs[] = extractor.requestUsedArgs.get(name);
        Expr defArgs[] = extractor.requestArgs.get(name);

        def = def.substitute(this.commuCache, defUsedArgs);
        DefinedFunc result = new DefinedFunc(ctx, name, defArgs, def);
        this.results = new DefinedFunc[]{result};
    }

    private Expr exchangeCommu(Expr orig) throws SSIException {
        if (orig.isApp()) {
            if (orig.getFuncDecl().equals(this.func)) {
                Expr[] args = orig.getArgs();
                if (args.length != 2) {
                    throw new SSIException();
                }
                if (commuCache == null) {
                    commuCache = args;
                    return orig;
                } else if (commuCache[0].equals(args[0]) &&
                           commuCache[1].equals(args[1])) {
                    return orig;
                } else if (commuCache[1].equals(args[0]) &&
                           commuCache[0].equals(args[1])) {
                    return orig.update(new Expr[]{args[1], args[0]});
                } else {
                    logger.severe("CommuCache:" + Arrays.toString(commuCache));
                    logger.severe("args:" + Arrays.toString(commuCache));
                    throw new SSIException();
                }
            } else {
                List<Expr> newArgs = new ArrayList<Expr>();
                Expr[] args = orig.getArgs();
                for (Expr e: args) {
                    newArgs.add(this.exchangeCommu(e));
                }
                return orig.update(newArgs.toArray(new Expr[newArgs.size()]));
            }
        }
        return orig;
    }
}
