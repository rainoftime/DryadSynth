(set-logic BV)
(define-fun ehad ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000001))
(define-fun arba ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000004))
(define-fun shesh ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000010))
(define-fun smol ((x (_ BitVec 64))) (_ BitVec 64) (bvshl x #x0000000000000001))
(define-fun im ((x (_ BitVec 64)) (y (_ BitVec 64)) (z (_ BitVec 64))) (_ BitVec 64) (ite (= x #x0000000000000001) y z))
(synth-fun f ((x (_ BitVec 64))) (_ BitVec 64)
    ((Start (_ BitVec 64)))
    ((Start (_ BitVec 64) (#x0000000000000000 #x0000000000000001 x (bvnot Start) (smol Start) (ehad Start) (arba Start) (shesh Start) (bvand Start Start) (bvor Start Start) (bvxor Start Start) (bvadd Start Start) (im Start Start Start)))))
(constraint (= (f #x31D85AF7DB595E82) #xFE713D284125350B))
(constraint (= (f #xDBF398E827E62302) #xF9206338BEC0CEE7))
(constraint (= (f #x8A8134D6FA1DCA42) #xFBABF659482F11AD))
(constraint (= (f #x3444F9A2418CF982) #xFE5DD832EDF39833))
(constraint (= (f #x9614FA0A06E3D346) #xFB4F582FAFC8E165))
(constraint (= (f #x000000000001A166) #xFFFFFFFFFFFFF2F4))
(constraint (= (f #x0000000000015266) #xFFFFFFFFFFFFF56C))
(constraint (= (f #x0000000000017344) #xFFFFFFFFFFFFF465))
(constraint (= (f #x0000000000011AE0) #xFFFFFFFFFFFFF728))
(constraint (= (f #x0000000000013984) #xFFFFFFFFFFFFF633))
(constraint (= (f #x800000000000A000) #xFBFFFFFFFFFFFAFF))
(constraint (= (f #x8000000000008C22) #xFBFFFFFFFFFFFB9E))
(constraint (= (f #x800000000000CD86) #xFBFFFFFFFFFFF993))
(constraint (= (f #x800000000000DEC6) #xFBFFFFFFFFFFF909))
(constraint (= (f #x80000000000087C6) #xFBFFFFFFFFFFFBC1))
(constraint (= (f #x9B84C057B0F75776) #x00009B84C057B0F7))
(constraint (= (f #x0EBD25D3B12F1A96) #x00000EBD25D3B12F))
(constraint (= (f #x88D2730EFBFF59B4) #x000088D2730EFBFF))
(constraint (= (f #xFEB5A90115DB1972) #x0000FEB5A90115DB))
(constraint (= (f #xCB9D1DC098442754) #x0000CB9D1DC09844))
(constraint (= (f #xD5DE67A1D99C90EC) #xF9510CC2F1331B78))
(constraint (= (f #x7EDC1BABD68B6F8C) #xFC091F22A14BA483))
(constraint (= (f #xF050A0B15091750E) #xF87D7AFA757B7457))
(constraint (= (f #x1E29BFFE0DAFF16A) #xFF0EB2000F928074))
(constraint (= (f #xDE046284E09686CE) #xF90FDCEBD8FB4BC9))
(constraint (= (f #x000000000001A1F4) #x0000000000000001))
(constraint (= (f #x000000000001D1B4) #x0000000000000001))
(constraint (= (f #x0000000000013532) #x0000000000000001))
(constraint (= (f #x0000000000010C90) #x0000000000000001))
(constraint (= (f #x000000000001AA30) #x0000000000000001))
(constraint (= (f #x000000000001E9E8) #xFFFFFFFFFFFFF0B0))
(constraint (= (f #x000000000001C98E) #xFFFFFFFFFFFFF1B3))
(constraint (= (f #x000000000001DDCC) #xFFFFFFFFFFFFF111))
(constraint (= (f #x00000000000140AA) #xFFFFFFFFFFFFF5FA))
(constraint (= (f #x000000000001592E) #xFFFFFFFFFFFFF536))
(constraint (= (f #x800000000000A9F2) #xFBFFFFFFFFFFFAB0))
(constraint (= (f #x8000000000009B94) #xFBFFFFFFFFFFFB23))
(constraint (= (f #x000000000000C472) #xFFFFFFFFFFFFF9DC))
(constraint (= (f #x800000000000ED76) #xFBFFFFFFFFFFF894))
(constraint (= (f #x8000000000008872) #xFBFFFFFFFFFFFBBC))
(constraint (= (f #x000000000000AE4E) #x0000000000000000))
(constraint (= (f #x000000000000E028) #x0000000000000000))
(constraint (= (f #x800000000000B808) #x0000800000000000))
(constraint (= (f #x800000000000F56A) #x0000800000000000))
(constraint (= (f #x800000000000A98C) #x0000800000000000))
(constraint (= (f #x9CD436868A9F4157) #x00009CD436868A9F))
(constraint (= (f #x7E241E9E0701E8E9) #x00007E241E9E0701))
(constraint (= (f #xFF5DAD8ACB628898) #x0000FF5DAD8ACB62))
(constraint (= (f #x5E746F98B485EB9B) #x00005E746F98B485))
(constraint (= (f #xB4EE5739F672A495) #x0000B4EE5739F672))
(constraint (= (f #x000000000001AA6F) #x0000000000000001))
(constraint (= (f #x00000000000111EF) #x0000000000000001))
(constraint (= (f #x000000000001AB4B) #x0000000000000001))
(constraint (= (f #x00000000000150D5) #x0000000000000001))
(constraint (= (f #x000000000001EC0D) #x0000000000000001))
(constraint (= (f #x0000000000000001) #x0000FFFFFFFFFFFF))
(constraint (= (f #x800000000000F6CB) #x0000800000000000))
(constraint (= (f #x800000000000ACC9) #x0000800000000000))
(constraint (= (f #x800000000000BE87) #x0000800000000000))
(constraint (= (f #x000000000000F2D1) #x0000000000000000))
(constraint (= (f #x000000000000D25E) #x0000000000000000))
(check-synth)
