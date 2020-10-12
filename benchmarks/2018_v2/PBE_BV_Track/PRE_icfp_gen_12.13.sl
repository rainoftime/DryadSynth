(set-logic BV)
(define-fun ehad ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000001))
(define-fun arba ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000004))
(define-fun shesh ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000010))
(define-fun smol ((x (_ BitVec 64))) (_ BitVec 64) (bvshl x #x0000000000000001))
(define-fun im ((x (_ BitVec 64)) (y (_ BitVec 64)) (z (_ BitVec 64))) (_ BitVec 64) (ite (= x #x0000000000000001) y z))
(synth-fun f ((x (_ BitVec 64))) (_ BitVec 64)
    ((Start (_ BitVec 64)))
    ((Start (_ BitVec 64) (#x0000000000000000 #x0000000000000001 x (bvnot Start) (smol Start) (ehad Start) (arba Start) (shesh Start) (bvand Start Start) (bvor Start Start) (bvxor Start Start) (bvadd Start Start) (im Start Start Start)))))
(constraint (= (f #x5FCAC47DCF4626EC) #x5FCAC47DCF4626EC))
(constraint (= (f #x11079CCDA4455CF2) #x11079CCDA4455CF2))
(constraint (= (f #x4A51E6E550D616EC) #x4A51E6E550D616EC))
(constraint (= (f #x0345AAD2D1D01A69) #x0345AAD2D1D01A69))
(constraint (= (f #x56E6EFEBAAE00026) #x56E6EFEBAAE00026))
(constraint (= (f #xC2B709A52C79756A) #x00000C2B709A52C7))
(constraint (= (f #xEB948FEF0707B148) #x00000EB948FEF070))
(constraint (= (f #xF432F40C4616DBBE) #x00000F432F40C461))
(constraint (= (f #xF97DCA9E6B762F64) #x00000F97DCA9E6B7))
(constraint (= (f #xFC7EAF59A1D28D1A) #x00000FC7EAF59A1D))
(constraint (= (f #xFF6BC39FFFE64618) #xFF6BC39FFFE64618))
(constraint (= (f #xE1F7BF2D65D6BE6C) #xE1F7BF2D65D6BE6C))
(constraint (= (f #xEE9B3BF5D75A6AEC) #xEE9B3BF5D75A6AEC))
(constraint (= (f #xABA7777FBDD25E6C) #xABA7777FBDD25E6C))
(constraint (= (f #xC7533DEDFB5E8EFE) #xC7533DEDFB5E8EFE))
(constraint (= (f #x799AC30E122FF6A5) #x0000000000000000))
(constraint (= (f #x179981F96295BA26) #x0000000000000000))
(constraint (= (f #x8E2BCC592F8C203C) #x0000000000000000))
(constraint (= (f #x0FCE89287E3378DE) #x0000000000000000))
(constraint (= (f #x30D10A5BE27058FD) #x0000000000000000))
(constraint (= (f #xB0F75F7FFD8C1776) #x0000000000000000))
(constraint (= (f #xFD1D3BF3CCBC3756) #x0000000000000000))
(constraint (= (f #xA35C5CF7FF4C1DF2) #x0000000000000000))
(constraint (= (f #xED10DFFF20CEDF36) #x0000000000000000))
(constraint (= (f #x7FBA9EFDF38A0DFE) #x0000000000000000))
(constraint (= (f #x8304D9EABDABEDDB) #x000008304D9EABDA))
(constraint (= (f #x439EF27EAA147340) #x00000439EF27EAA1))
(constraint (= (f #xFDE67E4B69E2D5A2) #x00000FDE67E4B69E))
(constraint (= (f #x6FBC0AF29E906D8F) #x000006FBC0AF29E9))
(constraint (= (f #x19825D48A33AA1C9) #x0000019825D48A33))
(constraint (= (f #x670FDBFB7D4E92B4) #x0000000000000000))
(constraint (= (f #x9F0374FDFB560CA8) #x0000000000000000))
(constraint (= (f #xAF02F4FFDFBAAE74) #x0000000000000000))
(constraint (= (f #xF7EEEAB9DD4E7AF6) #x0000000000000000))
(constraint (= (f #xFE7709DDF7B678FA) #x0000000000000000))
(constraint (= (f #xED727AAFDFFE214C) #x0000000000000000))
(constraint (= (f #x57EBF8DDBFFA6554) #x0000000000000000))
(constraint (= (f #x47D3F8FD1F3EF3EA) #x0000000000000000))
(constraint (= (f #xCCDF376DDBD2E57E) #x0000000000000000))
(constraint (= (f #x9ED3F3ADECD613B8) #x0000000000000000))
(check-synth)
