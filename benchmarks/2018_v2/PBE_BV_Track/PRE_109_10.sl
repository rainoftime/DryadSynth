(set-logic BV)
(define-fun ehad ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000001))
(define-fun arba ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000004))
(define-fun shesh ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000010))
(define-fun smol ((x (_ BitVec 64))) (_ BitVec 64) (bvshl x #x0000000000000001))
(define-fun im ((x (_ BitVec 64)) (y (_ BitVec 64)) (z (_ BitVec 64))) (_ BitVec 64) (ite (= x #x0000000000000001) y z))
(synth-fun f ((x (_ BitVec 64))) (_ BitVec 64)
    ((Start (_ BitVec 64)))
    ((Start (_ BitVec 64) (#x0000000000000000 #x0000000000000001 x (bvnot Start) (smol Start) (ehad Start) (arba Start) (shesh Start) (bvand Start Start) (bvor Start Start) (bvxor Start Start) (bvadd Start Start) (im Start Start Start)))))
(constraint (= (f #xa6e766de7cb220c6) #xa6e7e6ff7efe7cf6))
(constraint (= (f #x8e86e818b0a38a5e) #x0000004400500040))
(constraint (= (f #xa275cb8493415895) #x0000004102418008))
(constraint (= (f #x7a27474d4ca949e8) #x7a277f6f4fed4de9))
(constraint (= (f #x6413c8b6291e0197) #x0000002009040b00))
(constraint (= (f #x0bd5784596e4b383) #x0bd57bd5fee5b7e7))
(constraint (= (f #xae526429d1eb7013) #x00000012002014a8))
(constraint (= (f #xadd1324d4608eb56) #x0000001020810421))
(constraint (= (f #x0908731a830c3db6) #x0000000084018400))
(constraint (= (f #xe94b861e34b7ae1a) #x0000004005020b12))
(check-synth)