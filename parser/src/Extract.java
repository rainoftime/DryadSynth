import java.util.*;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;
import org.antlr.v4.runtime.misc.ParseCancellationException;
import com.microsoft.z3.*;

public class Extract {
	public static void main(String[] args) throws Exception {
		ANTLRFileStream input = new ANTLRFileStream(args[0]);
		SygusLexer lexer = new SygusLexer(input);
		CommonTokenStream tokens = new CommonTokenStream(lexer);
		SygusParser parser = new SygusParser(tokens);
		Context z3ctx = new Context();

		ANTLRErrorStrategy es = new CustomErrorStrategy();
		parser.setErrorHandler(es);

		ParseTree tree;
		try{
			tree = parser.start();
			System.out.println("Accepted");
		} catch(Exception ex) {
			System.out.println("Not Accepted");
			return;
		}

		ParseTreeWalker walker = new ParseTreeWalker();
		SygusExtractor extractor = new SygusExtractor(z3ctx);
		walker.walk(extractor, tree);

		System.out.println("Synth requests:");
		for(FuncDecl func : extractor.requests.values()) {
			System.out.println("Name:" + func.getName());
			for(Sort sort : func.getDomain()) {
				System.out.println("Has argument with type " + sort.getName());
			}
			System.out.println("Return type is " + func.getRange().getName());
		}

		System.out.println("Defined variables:");
		for(Expr expr: extractor.vars.values()) {
			System.out.println("Name:" + expr.toString() + " Type:" + expr.getSort().toString());
		}

		System.out.println("Constraints:");
		for (Expr expr: extractor.constraints) {
			System.out.println(expr);
		}
	}
}

class CustomErrorStrategy extends DefaultErrorStrategy{
	@Override
	public void reportError(Parser recognizer, RecognitionException e){
		throw e;
	}
}
