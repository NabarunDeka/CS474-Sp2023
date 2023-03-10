(declare-const l1 Real)
(declare-const l2 Real)
(declare-const u1 Real)
(declare-const u2 Real)

(assert (forall ((z Real)) (=> (and (< l1 z) (< z u1) (< l2 z) (< z u2)) (exists ((w Real)) (and (< l1 w) (< l2 w)  (< w u1) (< w u2) (not (= z w)))))))

(apply qe)
