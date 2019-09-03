(set-logic BV)
(define-fun shr1 ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000001))
(define-fun shr4 ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000004))
(define-fun shr16 ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000010))
(define-fun shl1 ((x (_ BitVec 64))) (_ BitVec 64) (bvshl x #x0000000000000001))
(define-fun if0 ((x (_ BitVec 64)) (y (_ BitVec 64)) (z (_ BitVec 64))) (_ BitVec 64) (ite (= x #x0000000000000001) y z))
(synth-fun f ((x (_ BitVec 64))) (_ BitVec 64)
    ((Start (_ BitVec 64)))
    ((Start (_ BitVec 64) (#x0000000000000000 #x0000000000000001 x (bvnot Start) (shl1 Start) (shr1 Start) (shr4 Start) (shr16 Start) (bvand Start Start) (bvor Start Start) (bvxor Start Start) (bvadd Start Start) (if0 Start Start Start)))))
(constraint (= (f #x19855b490e5e2ae5) #x0000000000000001))
(constraint (= (f #x6b63449dd6556732) #x0000000000000000))
(constraint (= (f #xa4b4682eaae8ea3e) #x0000000000000000))
(constraint (= (f #x3ceec813e7daa134) #x0000000000000000))
(constraint (= (f #x275c9e223e9ea78e) #x00000275c9e223e9))
(constraint (= (f #x8e4499b4894bc193) #x000008e4499b4894))
(constraint (= (f #xe78194ee8c994a38) #x0000000000000000))
(constraint (= (f #xce5917b6e18d035c) #x00000ce5917b6e18))
(constraint (= (f #xb4800ee72a6eb801) #x00000b4800ee72a6))
(constraint (= (f #xb997c981ca9d6e43) #x00000b997c981ca9))
(constraint (= (f #xbe7c3ac9a0dabbd8) #x00000be7c3ac9a0d))
(constraint (= (f #x53cc006a3b1629ae) #x0000000000000000))
(constraint (= (f #xd2be8e349d42ae1e) #x00000d2be8e349d4))
(constraint (= (f #x4e49810566e16aca) #x000004e49810566e))
(constraint (= (f #x98ce7eb42a88734e) #x0000098ce7eb42a8))
(constraint (= (f #xe8ab6e6ebd96b2e5) #x0000000000000001))
(constraint (= (f #x8647dded84991577) #x0000000000000001))
(constraint (= (f #x769c7e99a76e958c) #x00000769c7e99a76))
(constraint (= (f #x288e743e58be43e9) #x0000000000000001))
(constraint (= (f #x31da15ec3bed95ca) #x0000031da15ec3be))
(constraint (= (f #x6e60e1a9a92eea0b) #x000006e60e1a9a92))
(constraint (= (f #x71d5d190e97d0ee9) #x0000000000000001))
(constraint (= (f #x902177c1c401bde5) #x0000000000000001))
(constraint (= (f #x14e8383891eae103) #x0000014e8383891e))
(constraint (= (f #xd423acd848842e92) #x00000d423acd8488))
(constraint (= (f #xec1867ddce0ee76c) #x0000000000000000))
(constraint (= (f #x3ee111d39e86ea26) #x0000000000000000))
(constraint (= (f #x89e0b27c69e33114) #x0000089e0b27c69e))
(constraint (= (f #xc705e08792a34b74) #x0000000000000000))
(constraint (= (f #x92dc2b063545d53b) #x0000000000000001))
(constraint (= (f #x1a032a3ed5e6dc9d) #x000001a032a3ed5e))
(constraint (= (f #xc670a5eeeeb99b20) #x0000000000000000))
(constraint (= (f #x12b3b7ac303d3734) #x0000000000000000))
(constraint (= (f #xc9963d817523ce37) #x0000000000000001))
(constraint (= (f #x46357be8548eee95) #x0000046357be8548))
(constraint (= (f #x210be16b3460180e) #x00000210be16b346))
(constraint (= (f #x60402e213106c9ee) #x0000000000000000))
(constraint (= (f #xa25e24db00168977) #x0000000000000001))
(constraint (= (f #x38c323939612dea0) #x0000000000000000))
(constraint (= (f #x25e3c34e85463e3b) #x0000000000000001))
(constraint (= (f #xc46c99c2c9e5563c) #x0000000000000000))
(constraint (= (f #x6d6854eed399a464) #x0000000000000000))
(constraint (= (f #x7a9519642996c9a7) #x0000000000000001))
(constraint (= (f #x01b5184caab112a5) #x0000000000000001))
(constraint (= (f #x8580179a5363e4db) #x000008580179a536))
(constraint (= (f #x8c9c9a9bc8c9091c) #x000008c9c9a9bc8c))
(constraint (= (f #x3ee76ad51c775bbe) #x0000000000000000))
(constraint (= (f #x978426ae98789112) #x00000978426ae987))
(constraint (= (f #x05db0e88cd09dea6) #x0000000000000000))
(constraint (= (f #x6de2beab0dec9429) #x0000000000000001))
(constraint (= (f #xb78baee3c32451a7) #x0000000000000001))
(constraint (= (f #x120d0aae6e85063b) #x0000000000000001))
(constraint (= (f #xd8ace2206563a740) #x00000d8ace220656))
(constraint (= (f #xeb20e308ea0b4e61) #x0000000000000001))
(constraint (= (f #x29de3001e0ce07e7) #x0000000000000001))
(constraint (= (f #xc693b078049221b5) #x0000000000000001))
(constraint (= (f #x200d9312eee40e63) #x0000000000000001))
(constraint (= (f #x7e5077e2398c5e9e) #x000007e5077e2398))
(constraint (= (f #xe68da19aca90643e) #x0000000000000000))
(constraint (= (f #x855ec114e9db01be) #x0000000000000000))
(constraint (= (f #xc54aaee307dcad39) #x0000000000000001))
(constraint (= (f #x8c90295d640dbbc7) #x000008c90295d640))
(constraint (= (f #xa196d51aed384438) #x0000000000000000))
(constraint (= (f #xccb3da3beec08e5e) #x00000ccb3da3beec))
(constraint (= (f #x6be0b0504ba082c5) #x000006be0b0504ba))
(constraint (= (f #x08b8839bb2614ed5) #x0000008b8839bb26))
(constraint (= (f #x768293a626eeb028) #x0000000000000000))
(constraint (= (f #x52047d60e537aaec) #x0000000000000000))
(constraint (= (f #x949b86744471aa85) #x00000949b8674447))
(constraint (= (f #x42963d84327e2da3) #x0000000000000001))
(constraint (= (f #x4ceed4e2e3a97d37) #x0000000000000001))
(constraint (= (f #x725462da868c3ee4) #x0000000000000000))
(constraint (= (f #xee3d548655c6aee1) #x0000000000000001))
(constraint (= (f #x54de83e59173842e) #x0000000000000000))
(constraint (= (f #x5be28b51d0c802cc) #x000005be28b51d0c))
(constraint (= (f #x7086008e27701ea1) #x0000000000000001))
(constraint (= (f #x5ce7ceb5ac9ce2da) #x000005ce7ceb5ac9))
(constraint (= (f #x52824080d150e7b8) #x0000000000000000))
(constraint (= (f #xb310b394edd81ae9) #x0000000000000001))
(constraint (= (f #x6c41b402cc65eec8) #x000006c41b402cc6))
(constraint (= (f #x9113ce156aac83cd) #x000009113ce156aa))
(constraint (= (f #xe1023a5eb0192e69) #x0000000000000001))
(constraint (= (f #x3ed04083ccc54ad9) #x000003ed04083ccc))
(constraint (= (f #x337d868a3e89a559) #x00000337d868a3e8))
(constraint (= (f #x462cceede1d8e62b) #x0000000000000001))
(constraint (= (f #xc01b19173369dadc) #x00000c01b1917336))
(constraint (= (f #x1a609613120c4785) #x000001a609613120))
(constraint (= (f #xd90d161a68729453) #x00000d90d161a687))
(constraint (= (f #x4e1039aeb6262299) #x000004e1039aeb62))
(constraint (= (f #xebd3decec1940091) #x00000ebd3decec19))
(constraint (= (f #x6ab92c36ac3cad61) #x0000000000000001))
(constraint (= (f #xed321e27b4ce5dd2) #x00000ed321e27b4c))
(constraint (= (f #x79ac4b43921bc0e3) #x0000000000000001))
(constraint (= (f #xeee869c316e90917) #x00000eee869c316e))
(constraint (= (f #x9ee24081e896546d) #x0000000000000001))
(constraint (= (f #x7e64047e0b326e23) #x0000000000000001))
(constraint (= (f #xa18a58e95cb1ad12) #x00000a18a58e95cb))
(constraint (= (f #x24eee73a83dc06c5) #x0000024eee73a83d))
(constraint (= (f #x34be8b54e9925256) #x0000034be8b54e99))
(constraint (= (f #x3501581c33a0dd1b) #x000003501581c33a))
(check-synth)
