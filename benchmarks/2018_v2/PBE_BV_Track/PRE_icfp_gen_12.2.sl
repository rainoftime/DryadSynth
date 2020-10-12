(set-logic BV)
(define-fun ehad ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000001))
(define-fun arba ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000004))
(define-fun shesh ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000010))
(define-fun smol ((x (_ BitVec 64))) (_ BitVec 64) (bvshl x #x0000000000000001))
(define-fun im ((x (_ BitVec 64)) (y (_ BitVec 64)) (z (_ BitVec 64))) (_ BitVec 64) (ite (= x #x0000000000000001) y z))
(synth-fun f ((x (_ BitVec 64))) (_ BitVec 64)
    ((Start (_ BitVec 64)))
    ((Start (_ BitVec 64) (#x0000000000000000 #x0000000000000001 x (bvnot Start) (smol Start) (ehad Start) (arba Start) (shesh Start) (bvand Start Start) (bvor Start Start) (bvxor Start Start) (bvadd Start Start) (im Start Start Start)))))
(constraint (= (f #x5D0896D634C8E36B) #x74225B58D3238DAC))
(constraint (= (f #xD14AED02DD89B205) #x452BB40B7626C814))
(constraint (= (f #x0C3758854F27F903) #x30DD62153C9FE40C))
(constraint (= (f #x3676996938249F99) #xD9DA65A4E0927E64))
(constraint (= (f #x1D29B94A055C660F) #x74A6E5281571983C))
(constraint (= (f #xFFFFFFFFFFFFFFFF) #xFFFFFFFFFFFFFFFC))
(constraint (= (f #xB070E01E09421A5B) #x0000000000000004))
(constraint (= (f #x3085861041C3C213) #x0000000000000004))
(constraint (= (f #x5A00F086841840B5) #x0000000000000004))
(constraint (= (f #x838706850A096039) #x0000000000000004))
(constraint (= (f #xE02C29050294A4B5) #x0000000000000004))
(constraint (= (f #x942134E5BBEA244C) #x284269CB77D44899))
(constraint (= (f #xCCCDC66E59842DCE) #x999B8CDCB3085B9D))
(constraint (= (f #x6844EC0605DA1684) #xD089D80C0BB42D09))
(constraint (= (f #xC9A14CFD52B83428) #x934299FAA5706851))
(constraint (= (f #x25266506BDCA31AA) #x4A4CCA0D7B946355))
(constraint (= (f #x0000000000000029) #x00000000000000A4))
(constraint (= (f #x000000000000003B) #x00000000000000EC))
(constraint (= (f #x000000000000002D) #x00000000000000B4))
(constraint (= (f #x0000000000000039) #x0000000000000004))
(constraint (= (f #x0000000000000031) #x0000000000000004))
(constraint (= (f #x0000000000000035) #x0000000000000004))
(constraint (= (f #x0000000000000034) #x00000000000000D0))
(constraint (= (f #x0000000000000038) #x00000000000000E0))
(constraint (= (f #x0000000000000028) #x00000000000000A0))
(constraint (= (f #x000000000000002E) #x00000000000000B8))
(constraint (= (f #x893BABB910136FB7) #x24EEAEE4404DBEDC))
(constraint (= (f #x0332740506EAA48A) #x0664E80A0DD54915))
(constraint (= (f #x5684853B5284D652) #xAD090A76A509ACA5))
(constraint (= (f #xE9C824EAA040D133) #xA72093AA810344CC))
(constraint (= (f #xA4BCB38D37AE3330) #x4979671A6F5C6661))
(constraint (= (f #x85CE2FF33EBAFD16) #x0B9C5FE67D75FA2D))
(constraint (= (f #xDD71D36E9E33384F) #x75C74DBA78CCE13C))
(constraint (= (f #x3562D1DDB0B9275C) #x6AC5A3BB61724EB9))
(constraint (= (f #xBEDA7FD867597326) #x7DB4FFB0CEB2E64D))
(constraint (= (f #xA1260B4DE5C7A5B9) #x84982D37971E96E4))
(constraint (= (f #xC301681490385091) #x0000000000000004))
(constraint (= (f #x0000000000000039) #x0000000000000004))
(constraint (= (f #x000000000000003C) #x00000000000000F0))
(constraint (= (f #x0000000000000029) #x00000000000000A4))
(check-synth)
