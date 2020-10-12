(set-logic BV)
(define-fun ehad ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000001))
(define-fun arba ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000004))
(define-fun shesh ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000010))
(define-fun smol ((x (_ BitVec 64))) (_ BitVec 64) (bvshl x #x0000000000000001))
(define-fun im ((x (_ BitVec 64)) (y (_ BitVec 64)) (z (_ BitVec 64))) (_ BitVec 64) (ite (= x #x0000000000000001) y z))
(synth-fun f ((x (_ BitVec 64))) (_ BitVec 64)
    ((Start (_ BitVec 64)))
    ((Start (_ BitVec 64) (#x0000000000000000 #x0000000000000001 x (bvnot Start) (smol Start) (ehad Start) (arba Start) (shesh Start) (bvand Start Start) (bvor Start Start) (bvxor Start Start) (bvadd Start Start) (im Start Start Start)))))
(constraint (= (f #xB7D57AD7CB4D44E6) #x0000000000000000))
(constraint (= (f #xA31B67704864219C) #x0000000000000000))
(constraint (= (f #xEF3104BCD91AF118) #x0000000000000000))
(constraint (= (f #xEA223BDD8320F618) #x0000000000000000))
(constraint (= (f #x636F819046969880) #x0000000000000000))
(constraint (= (f #xFFFF0000FFFF0002) #xFFFF0000FFFF0002))
(constraint (= (f #x8000000000000002) #x0000000000000000))
(constraint (= (f #x0000000000000002) #x0000000000000000))
(constraint (= (f #x48AAD83DDC03AC8F) #x00000048AAD83DDC))
(constraint (= (f #xF8FD05416EBFA945) #x000000F8FD05416E))
(constraint (= (f #x47CDB7597AD6AA8F) #x00000047CDB7597A))
(constraint (= (f #xDEF7CD79710AB703) #x000000DEF7CD7971))
(constraint (= (f #xA791E40F26F59169) #x000000A791E40F26))
(constraint (= (f #x0000000000000001) #x0000000000000000))
(constraint (= (f #x0000000000000003) #x0000000000000000))
(constraint (= (f #x8000000000000003) #x0000000000000000))
(constraint (= (f #x1251384D0BBA7055) #x0000001251384D0B))
(constraint (= (f #x04E10DF47379109B) #x00000004E10DF473))
(constraint (= (f #x005DD8D988FD1A5B) #x000000005DD8D988))
(constraint (= (f #x868AC026FA3670FB) #x000000868AC026FA))
(constraint (= (f #xF04EAC3591B66EDF) #x000000F04EAC3591))
(constraint (= (f #x7E28BA027BF73108) #x0000000000000000))
(constraint (= (f #x201787A78D863236) #x0000000000000000))
(constraint (= (f #xCB27CAE28B02C7FD) #x000000CB27CAE28B))
(constraint (= (f #xE047F7CF393C8717) #x000000E047F7CF39))
(constraint (= (f #xF2CE2D7B95B864C9) #x000000F2CE2D7B95))
(constraint (= (f #x1755C5B2FA32752E) #x0000000000000000))
(constraint (= (f #x6A9AFA38D45A7BBF) #x0000006A9AFA38D4))
(constraint (= (f #x9444DC4A6309B720) #x0000000000000000))
(constraint (= (f #x15F747C627297033) #x00000015F747C627))
(constraint (= (f #xF926D8FFB73A990C) #x0000000000000000))
(constraint (= (f #x8000000000000003) #x0000000000000000))
(constraint (= (f #x52A8201616FFFFFF) #x00000052A8201617))
(constraint (= (f #xFFFF0000FFFF0002) #xFFFF0000FFFF0002))
(constraint (= (f #x54D629EF727984E6) #x0000000000000000))
(constraint (= (f #x0000000000000001) #x0000000000000000))
(check-synth)
