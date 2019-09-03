(set-logic BV)
(define-fun ehad ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000001))
(define-fun arba ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000004))
(define-fun shesh ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000010))
(define-fun smol ((x (_ BitVec 64))) (_ BitVec 64) (bvshl x #x0000000000000001))
(define-fun im ((x (_ BitVec 64)) (y (_ BitVec 64)) (z (_ BitVec 64))) (_ BitVec 64) (ite (= x #x0000000000000001) y z))
(synth-fun f ((x (_ BitVec 64))) (_ BitVec 64)
    ((Start (_ BitVec 64)))
    ((Start (_ BitVec 64) (#x0000000000000000 #x0000000000000001 x (bvnot Start) (smol Start) (ehad Start) (arba Start) (shesh Start) (bvand Start Start) (bvor Start Start) (bvxor Start Start) (bvadd Start Start) (im Start Start Start)))))
(constraint (= (f #x0BD7094CADE4AD06) #x23851BE609AE0712))
(constraint (= (f #x3583FE2F05564744) #xA08BFA8D1002D5CC))
(constraint (= (f #x04C164CBE277B000) #x0E442E63A7671000))
(constraint (= (f #x880B1352A568E642) #x982139F7F03AB2C6))
(constraint (= (f #xA00A4F19B7B599AC) #xE01EED4D2720CD04))
(constraint (= (f #x16810F9249FC73E2) #x0000000000000001))
(constraint (= (f #xA8FAC36F15297B62) #x0000000000000001))
(constraint (= (f #x5BAC9073389763A2) #x0000000000000001))
(constraint (= (f #xDB95AE336468FD2A) #x0000000000000001))
(constraint (= (f #x391B44FABD3C266E) #x0000000000000001))
(constraint (= (f #x00000000002C6A86) #x0000000000853F92))
(constraint (= (f #x000000000030E140) #x000000000092A3C0))
(constraint (= (f #x00000000003DE88A) #x0000000000B9B99E))
(constraint (= (f #x0000000000352D4C) #x00000000009F87E4))
(constraint (= (f #x00000000002A078A) #x00000000007E169E))
(constraint (= (f #xD0E5F9BAFAC79814) #x72B1ED30F056C83C))
(constraint (= (f #x1B9547BE7A57F692) #x52BFD73B6F07E3B6))
(constraint (= (f #x7427CE73FFF172B4) #x5C776B5BFFD4581C))
(constraint (= (f #x37941A2B4C01521C) #xA6BC4E81E403F654))
(constraint (= (f #x4E9DF6DB010128F4) #xEBD9E49103037ADC))
(constraint (= (f #x000000000026AC66) #x0000000000740532))
(constraint (= (f #x000000000027EE22) #x000000000077CA66))
(constraint (= (f #x0000000000228A62) #x0000000000679F26))
(constraint (= (f #x00000000002712E2) #x00000000007538A6))
(constraint (= (f #x000000000034BAE6) #x00000000009E30B2))
(constraint (= (f #xD88979E908889295) #x0000000000000001))
(constraint (= (f #xDFEB6485B10A53F9) #x0000000000000001))
(constraint (= (f #x28689AC6FEB7C9FF) #x0000000000000001))
(constraint (= (f #x2A9276EC7DF07133) #x0000000000000001))
(constraint (= (f #x85CCCDC362F5663B) #x0000000000000001))
(constraint (= (f #xD3FBD80834D6C272) #x069FDEC041A6B613))
(constraint (= (f #xAA3DAF54BE1CD7F2) #x0551ED7AA5F0E6BF))
(constraint (= (f #x6DFD70018448D37E) #x036FEB800C22469B))
(constraint (= (f #x1482FFB2B82354FE) #x00A417FD95C11AA7))
(constraint (= (f #x306B02323A03B636) #x0183581191D01DB1))
(constraint (= (f #x00000000002ABEBC) #x0000000000803C34))
(constraint (= (f #x00000000002B62D8) #x0000000000822888))
(constraint (= (f #x00000000003DB770) #x0000000000B92650))
(constraint (= (f #x0000000000343C38) #x00000000009CB4A8))
(constraint (= (f #x0000000000379354) #x0000000000A6B9FC))
(constraint (= (f #x00000000002C2E5F) #x0000000000000001))
(constraint (= (f #x00000000003D7451) #x0000000000000001))
(constraint (= (f #x00000000003216D1) #x0000000000000001))
(constraint (= (f #x000000000037687B) #x0000000000000001))
(constraint (= (f #x00000000002E81DD) #x0000000000000001))
(constraint (= (f #x00000000002598F6) #x000000000070CAE2))
(constraint (= (f #x0000000000398CFE) #x0000000000ACA6FA))
(constraint (= (f #x000000000021867A) #x000000000064936E))
(constraint (= (f #x0000000000275A7A) #x0000000000760F6E))
(constraint (= (f #x000000000027C9FE) #x0000000000775DFA))
(constraint (= (f #xFFFF00087FF88011) #x0000000000000001))
(constraint (= (f #x000000FFFF02007F) #x0000000000000001))
(constraint (= (f #x001FFFE2000E00F3) #x0000000000000001))
(constraint (= (f #x3FFFC004003C0051) #x0000000000000001))
(constraint (= (f #xFFFF000403FC0C11) #x0000000000000001))
(constraint (= (f #x42758715F683D141) #x0213AC38AFB41E8B))
(constraint (= (f #xE4D82D5F5EC4DB47) #x0726C16AFAF626DB))
(constraint (= (f #x129B1E43AFA3412B) #x0094D8F21D7D1A09))
(constraint (= (f #x81901B45504FF60D) #x040C80DA2A827FB1))
(constraint (= (f #xDD94B0CFAA62E841) #x06ECA5867D531743))
(constraint (= (f #x00000000002D9261) #x0000000000016C93))
(constraint (= (f #x000000000036F9ED) #x000000000001B7CF))
(constraint (= (f #x000000000033DBC3) #x0000000000019EDF))
(constraint (= (f #x00000000003933C1) #x000000000001C99F))
(constraint (= (f #x00000000003F554F) #x000000000001FAAB))
(constraint (= (f #x07FFF80800387FC9) #x003FFFC04001C3FF))
(constraint (= (f #x00003FFFC0401FC1) #x000001FFFE0200FF))
(constraint (= (f #x7FFF800200020007) #x03FFFC0010001001))
(constraint (= (f #x0FFFF004007C1FA1) #x007FFF802003E0FD))
(constraint (= (f #x03FFFC0008001801) #x001FFFE0004000C1))
(check-synth)
