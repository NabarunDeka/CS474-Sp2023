;Checking sat of quantifier free formulas for uniqueness of identity 
(declare-sort A)
(declare-fun f (A A) A)
(declare-fun g (A) A)
(declare-const e A)
(declare-const c A)

;Instantiating group axiom 1 with constants e and c
(assert (= (f (f e e) e) (f e (f e e))))
(assert (= (f (f e e) c) (f e (f e c))))
(assert (= (f (f e c) e) (f e (f c e))))
(assert (= (f (f e c) c) (f e (f c c))))
(assert (= (f (f c e) e) (f c (f e e))))
(assert (= (f (f c e) c) (f c (f e c))))
(assert (= (f (f c c) e) (f c (f c e))))
(assert (= (f (f c c) c) (f c (f c c))))

;Instantiating group axiom 2 with constants e and c
(assert (and (= (f e e) e) (= (f e e) e)))
(assert (and (= (f c e) c) (= (f c e) c)))

;Instantiating group axiom 3 with constants e and c
(assert (and (= (f e (g e)) e) (= (f (g e) e) e)))
(assert (and (= (f c (g c)) e) (= (f (g c) c) e)))

;Instantiating Uniqueness of identity formula with constants e and c
(assert (and (= (f e c) e) (= (f c e) e) (not (= e c))))
(assert (and (= (f c c) c) (= (f c c) c) (not (= e c))))

(check-sat)
