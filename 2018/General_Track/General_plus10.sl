(set-logic LIA)
(synth-fun fb () Int
    ((Start Int))
    ((Start Int ((Constant Int)))))
(synth-fun fc () Int
    ((Start Int))
    ((Start Int ((Constant Int)))))
(constraint (= (fc) (+ (fb) 10)))
(check-synth)
