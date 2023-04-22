(declare-const r Real)
(declare-const s Real)
(declare-const r11 Real)
(declare-const r12 Real)
(declare-const r21 Real)
(declare-const r22 Real)
(declare-const s11 Real)
(declare-const s12 Real)
(declare-const s21 Real)
(declare-const s22 Real)

(assert  (and (<= 0 r) (<= r 1) (<= 0 s) (<= s 1) (forall ((r1 Real)) (=> (and (<= 0 r1) (<= r1 1)) (<= (+ (* r11 r1 s) (* r12 r1 (- 1 s)) (* r21 (- 1 r1) s) (* r22 (- 1 r1) (- 1 s))) (+ (* r11 r s) (* r12 r (- 1 s)) (* r21 (- 1 r) s) (* r22 (- 1 r) (- 1 s)))))) (forall ((s1 Real)) (=> (and (<= 0 s1) (<= s1 1)) (<= (+ (* s11 r s1) (* s12 r (- 1 s1)) (* s21 (- 1 r) s1) (* s22 (- 1 r) (- 1 s1))) (+ (* s11 r s) (* s12 r (- 1 s)) (* s21 (- 1 r) s) (* s22 (- 1 r) (- 1 s))))))))



(apply qe)


