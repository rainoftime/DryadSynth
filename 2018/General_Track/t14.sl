(set-logic LIA)
(synth-fun f_31-12-31-30 ((newLength Int) (offset Int)) Bool
    ((Start Bool) (IntExpr Int))
    ((Start Bool ((> IntExpr IntExpr) (>= IntExpr IntExpr)))
    (IntExpr Int (newLength offset 0 1))))
(declare-var newLength_31-12-31-30 Int)
(declare-var offset_31-12-31-30 Int)
(constraint (or (and (=> (and (= newLength_31-12-31-30 262144) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) false)) (and (=> (and (= newLength_31-12-31-30 131072) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= offset_31-12-31-30 2050) (= newLength_31-12-31-30 2048)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= newLength_31-12-31-30 16384) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= newLength_31-12-31-30 65536) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= offset_31-12-31-30 2050) (= newLength_31-12-31-30 1024)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= offset_31-12-31-30 2050) (= newLength_31-12-31-30 8192)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= newLength_31-12-31-30 4096) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (=> (and (= newLength_31-12-31-30 32768) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)))))))))) (or (and (=> (and (= offset_31-12-31-30 2050) (= newLength_31-12-31-30 2048)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= offset_31-12-31-30 2050) (= newLength_31-12-31-30 1024)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (=> (and (= newLength_31-12-31-30 4096) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) false)))) (or (and (=> (and (= newLength_31-12-31-30 262144) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= newLength_31-12-31-30 131072) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= offset_31-12-31-30 2050) (= newLength_31-12-31-30 2097152)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) false)) (and (=> (and (= offset_31-12-31-30 2050) (= newLength_31-12-31-30 2048)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= newLength_31-12-31-30 16384) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= newLength_31-12-31-30 1048576) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= newLength_31-12-31-30 65536) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= offset_31-12-31-30 2050) (= newLength_31-12-31-30 1024)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= newLength_31-12-31-30 524288) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= offset_31-12-31-30 2050) (= newLength_31-12-31-30 8192)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= newLength_31-12-31-30 4096) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (=> (and (= newLength_31-12-31-30 32768) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true))))))))))))) (or (and (=> (and (= offset_31-12-31-30 2050) (= newLength_31-12-31-30 2048)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= newLength_31-12-31-30 16384) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= offset_31-12-31-30 2050) (= newLength_31-12-31-30 1024)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= offset_31-12-31-30 2050) (= newLength_31-12-31-30 8192)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= newLength_31-12-31-30 4096) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (=> (and (= newLength_31-12-31-30 32768) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) false))))))) (or (and (=> (and (= newLength_31-12-31-30 262144) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= newLength_31-12-31-30 131072) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= offset_31-12-31-30 2050) (= newLength_31-12-31-30 2048)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= newLength_31-12-31-30 16384) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= newLength_31-12-31-30 65536) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= offset_31-12-31-30 2050) (= newLength_31-12-31-30 1024)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= newLength_31-12-31-30 524288) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) false)) (and (=> (and (= offset_31-12-31-30 2050) (= newLength_31-12-31-30 8192)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= newLength_31-12-31-30 4096) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (=> (and (= newLength_31-12-31-30 32768) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true))))))))))) (or (and (=> (and (= offset_31-12-31-30 2050) (= newLength_31-12-31-30 2048)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= offset_31-12-31-30 2050) (= newLength_31-12-31-30 1024)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= offset_31-12-31-30 2050) (= newLength_31-12-31-30 8192)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) false)) (=> (and (= newLength_31-12-31-30 4096) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true))))) (or (and (=> (and (= offset_31-12-31-30 2050) (= newLength_31-12-31-30 2048)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= newLength_31-12-31-30 16384) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= newLength_31-12-31-30 65536) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) false)) (and (=> (and (= offset_31-12-31-30 2050) (= newLength_31-12-31-30 1024)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= offset_31-12-31-30 2050) (= newLength_31-12-31-30 8192)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= newLength_31-12-31-30 4096) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (=> (and (= newLength_31-12-31-30 32768) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)))))))) (or (and (=> (and (= newLength_31-12-31-30 262144) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= newLength_31-12-31-30 131072) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= offset_31-12-31-30 2050) (= newLength_31-12-31-30 2048)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= offset_31-12-31-30 2050) (= newLength_31-12-31-30 2097152)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= newLength_31-12-31-30 16384) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= newLength_31-12-31-30 1048576) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= newLength_31-12-31-30 65536) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= newLength_31-12-31-30 524288) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= offset_31-12-31-30 2050) (= newLength_31-12-31-30 1024)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= offset_31-12-31-30 2050) (= newLength_31-12-31-30 8192)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= newLength_31-12-31-30 4096) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= offset_31-12-31-30 2050) (= newLength_31-12-31-30 4194304)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) false)) (=> (and (= newLength_31-12-31-30 32768) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)))))))))))))) (or (and (=> (and (= newLength_31-12-31-30 262144) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= newLength_31-12-31-30 131072) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= offset_31-12-31-30 2050) (= newLength_31-12-31-30 2048)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= offset_31-12-31-30 2050) (= newLength_31-12-31-30 2097152)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= newLength_31-12-31-30 16384) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= newLength_31-12-31-30 1048576) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= newLength_31-12-31-30 8388608) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) false)) (and (=> (and (= newLength_31-12-31-30 65536) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= offset_31-12-31-30 2050) (= newLength_31-12-31-30 1024)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= newLength_31-12-31-30 524288) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= offset_31-12-31-30 2050) (= newLength_31-12-31-30 8192)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= newLength_31-12-31-30 4096) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= offset_31-12-31-30 2050) (= newLength_31-12-31-30 4194304)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (=> (and (= newLength_31-12-31-30 32768) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true))))))))))))))) (or (and (=> (and (= newLength_31-12-31-30 262144) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= newLength_31-12-31-30 131072) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= offset_31-12-31-30 2050) (= newLength_31-12-31-30 2048)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= newLength_31-12-31-30 16384) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= newLength_31-12-31-30 1048576) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) false)) (and (=> (and (= newLength_31-12-31-30 65536) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= offset_31-12-31-30 2050) (= newLength_31-12-31-30 1024)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= newLength_31-12-31-30 524288) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= offset_31-12-31-30 2050) (= newLength_31-12-31-30 8192)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= newLength_31-12-31-30 4096) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (=> (and (= newLength_31-12-31-30 32768) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)))))))))))) (or (and (=> (and (= offset_31-12-31-30 2050) (= newLength_31-12-31-30 2048)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= newLength_31-12-31-30 16384) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) false)) (and (=> (and (= offset_31-12-31-30 2050) (= newLength_31-12-31-30 1024)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= offset_31-12-31-30 2050) (= newLength_31-12-31-30 8192)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (=> (and (= newLength_31-12-31-30 4096) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)))))) (and (=> (and (= newLength_31-12-31-30 131072) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) false)) (and (=> (and (= offset_31-12-31-30 2050) (= newLength_31-12-31-30 2048)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= newLength_31-12-31-30 16384) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= newLength_31-12-31-30 65536) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= offset_31-12-31-30 2050) (= newLength_31-12-31-30 1024)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= offset_31-12-31-30 2050) (= newLength_31-12-31-30 8192)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (and (=> (and (= newLength_31-12-31-30 4096) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)) (=> (and (= newLength_31-12-31-30 32768) (= offset_31-12-31-30 2050)) (= (f_31-12-31-30 newLength_31-12-31-30 offset_31-12-31-30) true)))))))))))))))))))))
(check-synth)
