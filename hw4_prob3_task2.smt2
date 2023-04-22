(declare-sort A)
(declare-const e A)
(declare-const c1 A)
(declare-const c2 A)
(declare-const c3 A)
(declare-fun f (A A) A)

;Instantiating associativity axiom with x=c2, y=c1, z=c3
(assert (= (f (f c2 c1) c3) (f c2 (f c1 c3))))

;Uniqueness of inverse formula. Since it has no universal quantified variable, no instantiation needed
(assert (and (= (f c1 c2) e) (= (f c2 c1) e) (= (f c1 c3) e) (= (f c3 c1) e) (not (= c2 c3))))

;Instantiating group axiom 2 with x = c2 and x = c3
(assert (and (= (f c2 e) c2) (= (f e c2) c2)))
(assert (and (= (f c3 e) c3) (= (f e c3) c3)))


(check-sat)


