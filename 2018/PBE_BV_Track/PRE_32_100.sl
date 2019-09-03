(set-logic BV)
(define-fun ehad ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000001))
(define-fun arba ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000004))
(define-fun shesh ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000010))
(define-fun smol ((x (_ BitVec 64))) (_ BitVec 64) (bvshl x #x0000000000000001))
(define-fun im ((x (_ BitVec 64)) (y (_ BitVec 64)) (z (_ BitVec 64))) (_ BitVec 64) (ite (= x #x0000000000000001) y z))
(synth-fun f ((x (_ BitVec 64))) (_ BitVec 64)
    ((Start (_ BitVec 64)))
    ((Start (_ BitVec 64) (#x0000000000000000 #x0000000000000001 x (bvnot Start) (smol Start) (ehad Start) (arba Start) (shesh Start) (bvand Start Start) (bvor Start Start) (bvxor Start Start) (bvadd Start Start) (im Start Start Start)))))
(constraint (= (f #x9b00ddc410956b17) #xc9fe4477ded529d2))
(constraint (= (f #x5ed46448a5bacad3) #x4257376eb48a6a5a))
(constraint (= (f #xea987e0cb5dde04b) #x2acf03e694443f6a))
(constraint (= (f #xac467d89e8ee1ee6) #x588cfb13d1dc3dcd))
(constraint (= (f #x1e77e2d930aa5954) #x3cefc5b26154b2a9))
(constraint (= (f #xee87ded8e6d1b7b7) #x22f0424e325c9092))
(constraint (= (f #x26830b4ec03e68a2) #x4d06169d807cd145))
(constraint (= (f #xb773517ee92e61ad) #x91195d022da33ca6))
(constraint (= (f #x504d893baae887db) #x5f64ed88aa2ef04a))
(constraint (= (f #x3a4ee1241c72547a) #x749dc24838e4a8f5))
(constraint (= (f #x2aa66395ced40a86) #x554cc72b9da8150d))
(constraint (= (f #xd17549882ea29884) #xa2ea93105d453109))
(constraint (= (f #x967ee0b387742393) #xd3023e98f117b8da))
(constraint (= (f #xd7c7ae4387065b8b) #x5070a378f1f348ea))
(constraint (= (f #x55a3019e75b75913) #x54b9fcc314914dda))
(constraint (= (f #xdaebee1ed367c9e1) #x4a2823c259306c3e))
(constraint (= (f #xb9de976a625eb0ce) #x73bd2ed4c4bd619d))
(constraint (= (f #xde8e8b0c722b5c46) #xbd1d1618e456b88d))
(constraint (= (f #x92be27181c444230) #x257c4e3038888461))
(constraint (= (f #x56e631b639e8ee16) #xadcc636c73d1dc2d))
(constraint (= (f #x547ad8bc9aee8eea) #xa8f5b17935dd1dd5))
(constraint (= (f #x6b9dee7ad17c11eb) #x28c4230a5d07dc2a))
(constraint (= (f #x45619e25b04e00b0) #x8ac33c4b609c0161))
(constraint (= (f #x5d44c1a6e52ca08e) #xba89834dca59411d))
(constraint (= (f #xd2d30da2ec43e134) #xa5a61b45d887c269))
(constraint (= (f #xb65e856577259ee6) #x6cbd0acaee4b3dcd))
(constraint (= (f #x2e98ee18aa6ce180) #x5d31dc3154d9c301))
(constraint (= (f #xc8191ebe018ec8b5) #x6fcdc283fce26e96))
(constraint (= (f #x9de8b7ea9e1c42ae) #x3bd16fd53c38855d))
(constraint (= (f #x586b386066314bda) #xb0d670c0cc6297b5))
(constraint (= (f #x224e83e95bd1c8cd) #xbb62f82d485c6e66))
(constraint (= (f #xa02e5d124410ceb3) #xbfa345db77de629a))
(constraint (= (f #xb364cda1c0c5837e) #x66c99b43818b06fd))
(constraint (= (f #x1ca483a3c3759593) #xc6b6f8b87914d4da))
(constraint (= (f #x3a46d3571e47e910) #x748da6ae3c8fd221))
(constraint (= (f #xe2aa1b5dad0c0ede) #xc55436bb5a181dbd))
(constraint (= (f #x64cd6b57ab78bee1) #x36652950a90e823e))
(constraint (= (f #xbc7c00d5d61e3937) #x8707fe5453c38d92))
(constraint (= (f #x3808bb23ce4b9de0) #x701176479c973bc1))
(constraint (= (f #x1aa7edd545ee738a) #x354fdbaa8bdce715))
(constraint (= (f #xce6446da87b2ecd6) #x9cc88db50f65d9ad))
(constraint (= (f #x572720289de166c9) #x51b1bfaec43d326e))
(constraint (= (f #xde3e1c9c2846e7d3) #x4383c6c7af72305a))
(constraint (= (f #x75c294abe2b1bd80) #xeb852957c5637b01))
(constraint (= (f #xd2d282e81e057882) #xa5a505d03c0af105))
(constraint (= (f #xeb9dee5062e3291e) #xd73bdca0c5c6523d))
(constraint (= (f #x3e5aecce35d02478) #x7cb5d99c6ba048f1))
(constraint (= (f #x03646a775ad953e0) #x06c8d4eeb5b2a7c1))
(constraint (= (f #x192592c4bbdc55ee) #x324b258977b8abdd))
(constraint (= (f #x0a30b1e7b2175161) #xeb9e9c309bd15d3e))
(constraint (= (f #x1b6b2101a345eb5e) #x36d64203468bd6bd))
(constraint (= (f #x26102b2b0d272790) #x4c2056561a4e4f21))
(constraint (= (f #x45044d5b65055363) #x75f7654935f5593a))
(constraint (= (f #xd1ee590b38ee7e33) #x5c234de98e23039a))
(constraint (= (f #x24670eeb43535e0e) #x48ce1dd686a6bc1d))
(constraint (= (f #xcea12724d1314ece) #x9d424e49a2629d9d))
(constraint (= (f #x092c8762203365ba) #x12590ec44066cb75))
(constraint (= (f #x0b71ae330aea6136) #x16e35c6615d4c26d))
(constraint (= (f #x29564d10e38d93d8) #x52ac9a21c71b27b1))
(constraint (= (f #xe700863b4b8b2ed0) #xce010c7697165da1))
(constraint (= (f #x9a36d4ce563e8ab1) #xcb9256635382ea9e))
(constraint (= (f #xc3e38d782445aaa5) #x7838e50fb774aab6))
(constraint (= (f #x19a072492793ba1e) #x3340e4924f27743d))
(constraint (= (f #xd96b3437aced3b69) #x4d299790a625892e))
(constraint (= (f #xe83533926729b3d6) #xd06a6724ce5367ad))
(constraint (= (f #xb19ca43280536c1e) #x6339486500a6d83d))
(constraint (= (f #x0ee908bb41b08154) #x1dd21176836102a9))
(constraint (= (f #x026e4b4eca771607) #xfb2369626b11d3f2))
(constraint (= (f #xab7823ee98d62d00) #x56f047dd31ac5a01))
(constraint (= (f #x767a4643225c1a0a) #xecf48c8644b83415))
(constraint (= (f #x93bea346e9c94978) #x277d468dd39292f1))
(constraint (= (f #xde5928ad68cde23a) #xbcb2515ad19bc475))
(constraint (= (f #x9591b8d5c696321e) #x2b2371ab8d2c643d))
(constraint (= (f #x3028be6d3458d94e) #x60517cda68b1b29d))
(constraint (= (f #x72ba924b512087e6) #xe5752496a2410fcd))
(constraint (= (f #xcb41e1c40777e809) #x697c3c77f1102fee))
(constraint (= (f #x056ee9bdd28a9eda) #x0addd37ba5153db5))
(constraint (= (f #x432ee1372c5eebe8) #x865dc26e58bdd7d1))
(constraint (= (f #x88cea635a6370927) #xee62b394b391edb2))
(constraint (= (f #x2b5c3cedbcb73d6a) #x56b879db796e7ad5))
(constraint (= (f #xe1ccacde346589bb) #x3c66a6439734ec8a))
(constraint (= (f #xa23b836490731484) #x447706c920e62909))
(constraint (= (f #x5ac78b48e30e9a7e) #xb58f1691c61d34fd))
(constraint (= (f #xd63cb19de25c0922) #xac79633bc4b81245))
(constraint (= (f #xaa829c23e1118e8b) #xaafac7b83ddce2ea))
(constraint (= (f #x93d57e5ee6eed6ca) #x27aafcbdcdddad95))
(constraint (= (f #x9e8ca30a5c589419) #xc2e6b9eb474ed7ce))
(constraint (= (f #x46bc8db761373159) #x7286e4913d919d4e))
(constraint (= (f #x7e8190ddeac4ae23) #x02fcde442a76a3ba))
(constraint (= (f #xded7eee807aa349b) #x4250222ff0ab96ca))
(constraint (= (f #x8e46a23917aec30c) #x1c8d44722f5d8619))
(constraint (= (f #xbbaccee36db64be6) #x77599dc6db6c97cd))
(constraint (= (f #x60d495098e0ba5e3) #x3e56d5ece3e8b43a))
(constraint (= (f #x0c7d3ed0eeed7d01) #xe705825e222505fe))
(constraint (= (f #x40d3c490708854ab) #x7e5876df1eef56aa))
(constraint (= (f #xc7c136c7cc075bce) #x8f826d8f980eb79d))
(constraint (= (f #x86b4e7303a1a050e) #x0d69ce6074340a1d))
(constraint (= (f #x8e0991a9e7691149) #xe3ecdcac312ddd6e))
(constraint (= (f #x2827ae8bcb758c99) #xafb0a2e86914e6ce))
(constraint (= (f #x713accb408e141ce) #xe275996811c2839d))
(check-synth)
