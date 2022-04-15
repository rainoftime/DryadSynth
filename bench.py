# coding: utf8
import os
import subprocess
from threading import Timer
from pathlib import Path
# import zlib

def find_smt2_files(path):
    flist = []  # path to smtlib2 files
    for root, dirs, files in os.walk(path):
        for fname in files:
            tt = os.path.splitext(fname)[1]
            if tt == '.smt2' or tt == '.sl':
                flist.append(os.path.join(root, fname))
    return flist


def terminate(process, is_timeout):
    if process.poll() is None:
        try:
            process.terminate()
            is_timeout[0] = True
        except Exception as es:
            # print("error for interrupting")
            print(es)
            pass


def solve_with_bin_solver(cmd, timeout=5):
    """
    cmd should be a complete cmd
    """
    p = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)

    is_timeout = [False]
    timer = Timer(timeout, terminate, args=[p, is_timeout])
    timer.start()
    out = p.stdout.readlines()
    out = ' '.join([str(element.decode('UTF-8')) for element in out])
    p.stdout.close()
    timer.cancel()
    if is_timeout[0]:
        return out
        # return "timeout"
    return out


# java -Djava.library.path=../lib Run -t 1 -f 20 -i 30 -C $1 2>/dev/null

current_dir = str(Path.cwd())
proj_classes = current_dir + "/classes"
antlr_jar = current_dir + "/lib/antlr.jar"
z3_jar = current_dir + "/lib/com.microsoft.z3.jar"
jopt_jar = current_dir + "/lib/jopt-simple.jar"
cp_dir = proj_classes + ":" + antlr_jar + ":" + z3_jar + ":" + jopt_jar
# print(cp_dir)

g_error  = 0


def solve_file(file_path):
    cmd = ["java"]
    cmd.append("-Djava.library.path=/Users/prism/Work/z3bin/bin")
    cmd.append("-cp"); cmd.append(cp_dir)
    cmd.append("Run")
    cmd.append("-t"); cmd.append("1")
    cmd.append(file_path)
    # print(cmd)
    out = solve_with_bin_solver(cmd, 5)
    if "Exception in thread" in out:
        g_error += 1
    else:
        print(out)



def solve_dir(path):
    files = find_smt2_files(path)
    print("Num files: ", len(files))
    for file in files:
        print("Solving: ", file)
        solve_file(file)

# TODO: disable logging?

# solve_file(current_dir + "/benchmarks/CLIA/diff.sl")
solve_dir("/Users/prism/Work/DryadSynth/benchmarks/INV")