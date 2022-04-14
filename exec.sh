#!/bin/bash
BASE=`dirname $0`
#java -cp $BASE/classes/:$BASE/lib/antlr.jar:/Users/prism/Work/z3bin/bin/com.microsoft.z3.jar:$BASE/lib/jopt-simple.jar Run "$@"
java -Djava.library.path="/Users/prism/Work/z3bin/bin" -cp $BASE/classes/:$BASE/lib/antlr.jar:$BASE/lib/com.microsoft.z3.jar:$BASE/lib/jopt-simple.jar Run "$@"
