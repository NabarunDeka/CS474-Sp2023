
(assert (not (forall ((r11 Real) (r12 Real) (r21 Real) (r22 Real) (s11 Real) (s12 Real) (s21 Real) (s22 Real)) (exists ((r Real) (s Real)) (and (<= 0 r) (<= r 1) (<= 0 s) (<= s 1) (forall ((r1 Real)) (=> (and (<= 0 r1) (<= r1 1)) (<= (+ (* r11 r1 s) (* r12 r1 (- 1 s)) (* r21 (- 1 r1) s) (* r22 (- 1 r1) (- 1 s))) (+ (* r11 r s) (* r12 r (- 1 s)) (* r21 (- 1 r) s) (* r22 (- 1 r) (- 1 s)))))) (forall ((s1 Real)) (=> (and (<= 0 s1) (<= s1 1)) (<= (+ (* s11 r s1) (* s12 r (- 1 s1)) (* s21 (- 1 r) s1) (* s22 (- 1 r) (- 1 s1))) (+ (* s11 r s) (* s12 r (- 1 s)) (* s21 (- 1 r) s) (* s22 (- 1 r) (- 1 s)))))))))))

(check-sat)
