(set-logic BV)
(define-fun hd13 ((x (_ BitVec 32))) (_ BitVec 32) (bvor (bvashr x #x0000001F) (bvlshr (bvneg x) #x0000001F)))
(synth-fun f ((x (_ BitVec 32))) (_ BitVec 32)
    ((Start (_ BitVec 32)))
    ((Start (_ BitVec 32) ((bvlshr Start Start) (bvashr Start Start) (bvor Start Start) (bvneg Start) x #x0000001F))))
(declare-var x (_ BitVec 32))
(constraint (= (hd13 x) (f x)))
(check-synth)
