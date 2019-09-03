(set-logic BV)
(define-fun ehad ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000001))
(define-fun arba ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000004))
(define-fun shesh ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000010))
(define-fun smol ((x (_ BitVec 64))) (_ BitVec 64) (bvshl x #x0000000000000001))
(define-fun im ((x (_ BitVec 64)) (y (_ BitVec 64)) (z (_ BitVec 64))) (_ BitVec 64) (ite (= x #x0000000000000001) y z))
(synth-fun f ((x (_ BitVec 64))) (_ BitVec 64)
    ((Start (_ BitVec 64)))
    ((Start (_ BitVec 64) (#x0000000000000000 #x0000000000000001 x (bvnot Start) (smol Start) (ehad Start) (arba Start) (shesh Start) (bvand Start Start) (bvor Start Start) (bvxor Start Start) (bvadd Start Start) (im Start Start Start)))))
(constraint (= (f #x1470713b10869bce) #x1577773bb18efbfe))
(constraint (= (f #x66cd5e1795eceb70) #x66eddff7fdfeeff7))
(constraint (= (f #x10bb249004e2ca3d) #x11bbb6d904eeeebf))
(constraint (= (f #x1243e2760de7749d) #x00001243e2760de7))
(constraint (= (f #x93791d2e02488ee6) #x9b7f9dfee26c8eee))
(constraint (= (f #x5020ae1be3011e93) #x00005020ae1be301))
(constraint (= (f #x581ebc8212e1eee7) #x0000581ebc8212e1))
(constraint (= (f #x4a922e0c5e511627) #x00004a922e0c5e51))
(constraint (= (f #x5e725361d8185c25) #x5ff77777dd99dde7))
(constraint (= (f #x4ed4964b24e9495c) #x00004ed4964b24e9))
(constraint (= (f #x39b07302747ee678) #x3bbb7732777fee7f))
(constraint (= (f #xdae0401e23ee42a3) #xdfee441fe3fee6ab))
(constraint (= (f #xc1ebc6be4b41106b) #x0000c1ebc6be4b41))
(constraint (= (f #x7c478c7b6a37725c) #x00007c478c7b6a37))
(constraint (= (f #xa4461a79702e4d4e) #xae467bfff72eedde))
(constraint (= (f #x73c720cbbb0e1a96) #x77ff72cfbbbefbbf))
(constraint (= (f #xc33558084426d40c) #xcf375d88c466fd4c))
(constraint (= (f #x8c7dd52e39d8dc1a) #x8cffdd7efbdddddb))
(constraint (= (f #xc5c063452a00b02a) #xcddc67757aa0bb2a))
(constraint (= (f #xbcc6b80a069607cb) #xbfcefb8aa6ff67ff))
(constraint (= (f #xed0d98ec9e066052) #xefddd9eedfe66657))
(constraint (= (f #x3ed929ab77b894e7) #x3ffdbbbbf7fb9def))
(constraint (= (f #xd45ad12ec32588aa) #x0000d45ad12ec325))
(constraint (= (f #x349ee0a0b53cb657) #x37dfeeaabf7fff77))
(constraint (= (f #xbbeb37072b8bb42e) #x0000bbeb37072b8b))
(constraint (= (f #x127e6055443966ae) #x0000127e60554439))
(constraint (= (f #xc75189e77968ee60) #xcf7599ff7ffeeee6))
(constraint (= (f #x3a711e24e34e2ec0) #x3bf71fe6ef7eeeec))
(constraint (= (f #x18d5d66e9d474cda) #x000018d5d66e9d47))
(constraint (= (f #x1b654a125046eb9a) #x1bf75eb37546efbb))
(constraint (= (f #x74561bb73d24349b) #x77577bbf7ff677db))
(constraint (= (f #xe844b8de550e9925) #xeec4fbdff55ef9b7))
(constraint (= (f #x93c1acdd3ea6eac3) #x9bfdbeddffeeeeef))
(constraint (= (f #x346ee54aaa28032c) #x376eef5eaaaa833e))
(constraint (= (f #xab78e3a268809d24) #xabffefba6e889df6))
(constraint (= (f #xbace2ed7245d3c41) #x0000bace2ed7245d))
(constraint (= (f #x01b096a5ea2d90c6) #x000001b096a5ea2d))
(constraint (= (f #x226a19d992e9eee4) #x0000226a19d992e9))
(constraint (= (f #xd975b6a034683203) #xddf7ffea376eb323))
(constraint (= (f #xb815b3ed1161799b) #x0000b815b3ed1161))
(constraint (= (f #xd8b56d448e1b72c3) #x0000d8b56d448e1b))
(constraint (= (f #x0a9683357b19ae69) #x00000a9683357b19))
(constraint (= (f #x6dc529e23e2a2ae3) #x6fdd7bfe3feaaaef))
(constraint (= (f #x141b82ed6a5a0759) #x155bbaeffeffa77d))
(constraint (= (f #x6ea51014a4601d9b) #x6eef5115ee661ddb))
(constraint (= (f #xb2ec9c28941e4612) #xbbeeddea9d5fe673))
(constraint (= (f #x0d82243b02bea709) #x0dda267bb2bfef79))
(constraint (= (f #x459dde0a2ebe1c9a) #x45dddfeaaefffddb))
(constraint (= (f #xaeebd33ce587d257) #x0000aeebd33ce587))
(constraint (= (f #x11ceac0d727972ee) #x000011ceac0d7279))
(constraint (= (f #x13eec4539e1ea227) #x13feec57bfffea27))
(constraint (= (f #x89c5e20781b30853) #x000089c5e20781b3))
(constraint (= (f #x4a0687cc45e7e80c) #x00004a0687cc45e7))
(constraint (= (f #xd2295b6603ba0b2e) #xdf2bdff663bbabbe))
(constraint (= (f #x41ddd60d414b762e) #x000041ddd60d414b))
(constraint (= (f #xee42b2735974eaa7) #xeee6bb777df7eeaf))
(constraint (= (f #xacb44bd847301ad1) #xaeff4ffdc7731bfd))
(constraint (= (f #x17dbd1de8a256154) #x000017dbd1de8a25))
(constraint (= (f #x6dd9e0241903563a) #x00006dd9e0241903))
(constraint (= (f #x546512e14d543de9) #x556753ef5dd57fff))
(constraint (= (f #xbe8c86e0a36d9b4e) #x0000be8c86e0a36d))
(constraint (= (f #xe76ac0603bccebe0) #xef7eec663bfceffe))
(constraint (= (f #xd07db356ec33c1e3) #x0000d07db356ec33))
(constraint (= (f #x34548564a9b7756c) #x000034548564a9b7))
(constraint (= (f #x4e8d67315646e9a1) #x4eedf7735766efbb))
(constraint (= (f #x283edace849626ec) #x2abfffeeecdf66ee))
(constraint (= (f #x2dd7894e961b6291) #x00002dd7894e961b))
(constraint (= (f #x803bedc70dd1b14e) #x0000803bedc70dd1))
(constraint (= (f #xec248cd18c2976de) #x0000ec248cd18c29))
(constraint (= (f #xb3ed8b086e6a05e6) #xbbffdbb8eeeea5fe))
(constraint (= (f #xe02db75eec762d6c) #xee2fff7feef76ffe))
(constraint (= (f #xe01d1da88c727eae) #xee1dddfa8cf77fee))
(constraint (= (f #x142dba1e99eca0a2) #x156ffbbff9feeaaa))
(constraint (= (f #x24b3b1720b55b6ce) #x000024b3b1720b55))
(constraint (= (f #xe99783cb2c9e03e2) #xef9ffbffbedfe3fe))
(constraint (= (f #x5787905edb617129) #x00005787905edb61))
(constraint (= (f #xe4e104ee5c7ea680) #xeeef14eefdffeee8))
(constraint (= (f #x32ed6d9de3ae002a) #x33efffddffbee02a))
(constraint (= (f #xc7786ec2d9976cc4) #x0000c7786ec2d997))
(constraint (= (f #xd558e004a0938b8b) #x0000d558e004a093))
(constraint (= (f #x7d1edee67ee0585e) #x7fdfffee7fee5ddf))
(constraint (= (f #x52277814868cee4d) #x57277f95ceeceeed))
(constraint (= (f #x326595e71817d049) #x0000326595e71817))
(constraint (= (f #xbe63302b47c3326a) #x0000be63302b47c3))
(constraint (= (f #x3981cd09a1c2da16) #x3b99ddd9bbdeffb7))
(constraint (= (f #xe499db2069b6e1ca) #xeed9dfb26fbfefde))
(constraint (= (f #xa50141c644a470c2) #xaf5155de64ee77ce))
(constraint (= (f #xab1e0026be93b268) #x0000ab1e0026be93))
(constraint (= (f #xb75ab4ee6b927759) #xbf7fbfeeefbb777d))
(constraint (= (f #xeb373a9804ebe953) #x0000eb373a9804eb))
(constraint (= (f #x3ded3ca95a473c77) #x00003ded3ca95a47))
(constraint (= (f #xccd1e2baae8e4928) #xccddfebbaeeeedba))
(constraint (= (f #x4440ec0adbb179e7) #x00004440ec0adbb1))
(constraint (= (f #x883917e88b19711c) #x0000883917e88b19))
(constraint (= (f #xb4c712e9d561a3d1) #x0000b4c712e9d561))
(constraint (= (f #x051247bee808a884) #x055367ffee88aa8c))
(constraint (= (f #x62d74861b992490b) #x66ff7ce7bb9b6d9b))
(constraint (= (f #x5100baa7e5db343a) #x00005100baa7e5db))
(constraint (= (f #xe0e32d064b2470c6) #xeeef3fd66fb677ce))
(constraint (= (f #x44ce8a3cc9dd7c88) #x000044ce8a3cc9dd))
(check-synth)
