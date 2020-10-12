(set-logic BV)
(define-fun ehad ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000001))
(define-fun arba ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000004))
(define-fun shesh ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000010))
(define-fun smol ((x (_ BitVec 64))) (_ BitVec 64) (bvshl x #x0000000000000001))
(define-fun im ((x (_ BitVec 64)) (y (_ BitVec 64)) (z (_ BitVec 64))) (_ BitVec 64) (ite (= x #x0000000000000001) y z))
(synth-fun f ((x (_ BitVec 64))) (_ BitVec 64)
    ((Start (_ BitVec 64)))
    ((Start (_ BitVec 64) (#x0000000000000000 #x0000000000000001 x (bvnot Start) (smol Start) (ehad Start) (arba Start) (shesh Start) (bvand Start Start) (bvor Start Start) (bvxor Start Start) (bvadd Start Start) (im Start Start Start)))))
(constraint (= (f #x33b3983d2b60b1b9) #x0000000000000000))
(constraint (= (f #x4980d0e0dc5a6864) #x0000000000000000))
(constraint (= (f #x74b83a03d9ca6ae5) #x0000000000000000))
(constraint (= (f #x154a4b06ecb32ae8) #x0000000000000000))
(constraint (= (f #x2cb12e6e5214dbc6) #x0000000000000000))
(constraint (= (f #x9bcd3c21d29b9c9d) #x0000000000000000))
(constraint (= (f #x6c5782c63913aa5a) #x0000000000000000))
(constraint (= (f #x47e9dbd91305c9e2) #x0000000000000000))
(constraint (= (f #x735e637877d0551b) #x0000000000000000))
(constraint (= (f #x5334a1048435851a) #x0000000000000000))
(constraint (= (f #xeb09b86e616d4c44) #x0000000000000000))
(constraint (= (f #x8caa15ee054be0ec) #x0000000000000000))
(constraint (= (f #x52075e33d2ee1de6) #x0000000000000000))
(constraint (= (f #x186c3e13c1e93a87) #x0000000000000000))
(constraint (= (f #x1601eeca20b4a14d) #x0000000000000000))
(constraint (= (f #x21a9b725782a8399) #x0000000000000000))
(constraint (= (f #x3eda3026686eac76) #x0000000000000000))
(constraint (= (f #x540ec2e2a7b1c38e) #x0000000000000000))
(constraint (= (f #x1c38b5bed862c74b) #x0000000000000000))
(constraint (= (f #x54b4e80054e5e902) #x0000000000000000))
(constraint (= (f #x3e30ce5456ec5331) #x0000000000000000))
(constraint (= (f #xdbc399721797c21a) #x0000000000000000))
(constraint (= (f #x445e0e44ae8b21a9) #x0000000000000000))
(constraint (= (f #x91d2364147a56e70) #x0000000000000000))
(constraint (= (f #xb5b90e50a9591e64) #x0000000000000000))
(constraint (= (f #x3e3e7382a3b64142) #x0000000000000000))
(constraint (= (f #xd2b40eac73279102) #x0000000000000000))
(constraint (= (f #xeaee30e3ee90ccee) #x0000000000000000))
(constraint (= (f #xe8d3eeb68361ce01) #x0000000000000000))
(constraint (= (f #x5e69406a3b525907) #x0000000000000000))
(constraint (= (f #x31d2ddb634b6693d) #x0000000000000000))
(constraint (= (f #x8e92645a8e849645) #x0000000000000000))
(constraint (= (f #xe187dd33a2a87051) #x0000000000000000))
(constraint (= (f #x6483c767e1d042a0) #x0000000000000000))
(constraint (= (f #xda4153449e2dee02) #x0000000000000000))
(constraint (= (f #xda2dabed2a0b849e) #x0000000000000000))
(constraint (= (f #xe7c80bcc0da17a6e) #x0000000000000000))
(constraint (= (f #x05e40d4ee487a015) #x0000000000000000))
(constraint (= (f #xa2945992de87e10c) #x0000000000000000))
(constraint (= (f #xce226c1768bce81e) #x0000000000000000))
(constraint (= (f #x41b5eae0edc17580) #x0000000000000000))
(constraint (= (f #x0e47de2ee4e4221e) #x0000000000000000))
(constraint (= (f #x2417c39de8633296) #x0000000000000000))
(constraint (= (f #x1ae9de0c315c4241) #x0000000000000000))
(constraint (= (f #x9b676ed33e08d157) #x0000000000000000))
(constraint (= (f #xc7263012bb0e9879) #x0000000000000000))
(constraint (= (f #xed62a253b4e22528) #x0000000000000000))
(constraint (= (f #xd89e8534bc108953) #x0000000000000000))
(constraint (= (f #xb00481a0517d73c0) #x0000000000000000))
(constraint (= (f #x146ab9e27927eacd) #x0000000000000000))
(constraint (= (f #xc915a245656e7222) #x0000000000000000))
(constraint (= (f #xe14ebe008389e3ee) #x0000000000000000))
(constraint (= (f #x1da670566b3738a0) #x0000000000000000))
(constraint (= (f #x5733b72aed2eeda0) #x0000000000000000))
(constraint (= (f #xaaa304c88d667237) #x0000000000000000))
(constraint (= (f #xe569e6d8d7e180e2) #x0000000000000000))
(constraint (= (f #x9476e07373a38233) #x0000000000000000))
(constraint (= (f #x1ece9cb0c8d9e069) #x0000000000000000))
(constraint (= (f #xbe62bd555ed42a47) #x0000000000000000))
(constraint (= (f #x4703983e065e4e7e) #x0000000000000000))
(constraint (= (f #xad28de62044b4489) #x0000000000000000))
(constraint (= (f #xaad4190311b2ce37) #x0000000000000000))
(constraint (= (f #x7e45d8c426c089e4) #x0000000000000000))
(constraint (= (f #xba914adc34076940) #x0000000000000000))
(constraint (= (f #xe5a59433e0d179ec) #x0000000000000000))
(constraint (= (f #x03d8699d03e1332d) #x0000000000000000))
(constraint (= (f #x78ee0a2e7a558c91) #x0000000000000000))
(constraint (= (f #xc8cad1a29a3e807c) #x0000000000000000))
(constraint (= (f #x5230843e4814e8a8) #x0000000000000000))
(constraint (= (f #xe71eee4099662cee) #x0000000000000000))
(constraint (= (f #xe289071b1922ee19) #x0000000000000000))
(constraint (= (f #xbd2819a4c906e0be) #x0000000000000000))
(constraint (= (f #x52c621c76b7e8ec4) #x0000000000000000))
(constraint (= (f #xe3e8b1e0cdee451e) #x0000000000000000))
(constraint (= (f #x83094ab79127e5e4) #x0000000000000000))
(constraint (= (f #x866a9c85ba66b120) #x0000000000000000))
(constraint (= (f #x53cee65eb48e7025) #x0000000000000000))
(constraint (= (f #x1c6ec65ae583e178) #x0000000000000000))
(constraint (= (f #x22781778dc8c1b0d) #x0000000000000000))
(constraint (= (f #x4498351914a69331) #x0000000000000000))
(constraint (= (f #x35ee9a731dc2e446) #x0000000000000000))
(constraint (= (f #x36ec93b426c1726a) #x0000000000000000))
(constraint (= (f #xd3de35d2020be4ba) #x0000000000000000))
(constraint (= (f #xe83ece51927379ec) #x0000000000000000))
(constraint (= (f #x07e36c43b9ee4bd1) #x0000000000000000))
(constraint (= (f #xeeed6ba40e6d385b) #x0000000000000000))
(constraint (= (f #x7d994b10cb8d232a) #x0000000000000000))
(constraint (= (f #x4c20410d34382b4e) #x0000000000000000))
(constraint (= (f #x7e7b2461c9054213) #x0000000000000000))
(constraint (= (f #xc956be613810abee) #x0000000000000000))
(constraint (= (f #x61a54ab716538d60) #x0000000000000000))
(constraint (= (f #x073cdee3c9c63a39) #x0000000000000000))
(constraint (= (f #x700dcb757a14b4e6) #x0000000000000000))
(constraint (= (f #x6d5e8c50ae84a1e0) #x0000000000000000))
(constraint (= (f #x859e330882d9e7a7) #x0000000000000000))
(constraint (= (f #xd91b3da9216b5dc7) #x0000000000000000))
(constraint (= (f #x711e674e56ed6d37) #x0000000000000000))
(constraint (= (f #x2a0724be8271cd64) #x0000000000000000))
(constraint (= (f #xe79d1b9ce426a930) #x0000000000000000))
(constraint (= (f #x2ea9e104ab467de9) #x0000000000000000))
(check-synth)
