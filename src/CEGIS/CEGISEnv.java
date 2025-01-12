import java.util.*;

import com.microsoft.z3.*;

import java.util.concurrent.atomic.*;

public class CEGISEnv {
    public Producer1D pdc1D = null;
    public Producer2D pdc2D = null;
    public int fixedHeight = -1;
    public int fixedCond = -1;
    public int fixedVectorLength = -1;
    public SygusProblem problem = null;
    public int minFinite = -1;
    public int minInfinite = -1;
    public int eqBound = -1;
    public boolean maxsmtFlag = false;
    public String EUSolverPath = "";
    public boolean checkITOnly = false;
    public boolean tmpltApplied = false;
    public boolean enforceFHCEGIS = false;
    public SygusProblem original = null;

    public enum FeedType {
        ALLINONE, FIXED, HEIGHTONLY, HEIGHTANDCOND;
    }

    public FeedType feedType = null;
    public Set<Expr[]> counterExamples = new LinkedHashSet<Expr[]>();

    // public Map<Expr, Set<Expr[]>> cntrExpMap = new LinkedHashMap<Expr, Set<Expr[]>>();
    // public Map<Expr, Map<Integer, DefinedFunc[]>> triedProblem = new LinkedHashMap<Expr, Map<Integer, DefinedFunc[]>>();

    public class Tmplts {
        public DefinedFunc[] array = null;
    }

    Tmplts lastTmplts = new Tmplts();
    public AtomicInteger runningThreads = new AtomicInteger(0);
}
