(declare-const r Real)
(declare-const s Real)

(assert (and (<= 0 r) (<= r 1) (<= 0 s) (<= s 1) (forall ((r1 Real)) (=> (and (<= 0 r1) (<= r1 1)) (<= (+ (* 90 r1 s) (* 20 r1 (- 1 s)) (* 30 (- 1 r1) s) (* 60 (- 1 r1) (- 1 s))) (+ (* 90 r s) (* 20 r (- 1 s)) (* 30 (- 1 r) s) (* 60 (- 1 r) (- 1 s)))))) (forall ((s1 Real)) (=> (and (<= 0 s1) (<= s1 1)) (<= (+ (* 10 r s1) (* 80 r (- 1 s1)) (* 70 (- 1 r) s1) (* 40 (- 1 r) (- 1 s1))) (+ (* 10 r s) (* 80 r (- 1 s)) (* 70 (- 1 r) s) (* 40 (- 1 r) (- 1 s))))))))

(check-sat)
(get-model)
