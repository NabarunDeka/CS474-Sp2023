(assert (exists ((l1 Real) (l2 Real) (l3 Real) (l4 Real) (u1 Real) (u2 Real) (u3 Real) (u4 Real)) (and (< l1 u1) (< l2 u2) (< l3 u3) (< l4 u4) (exists ((z Real)) (and (< l1 z) (< l2 z) (< z u1) (< z u2))) (exists ((z Real)) (and (< l1 z) (< l4 z) (< z u1) (< z u4))) (exists ((z Real)) (and (< l2 z) (< l3 z) (< z u2) (< z u3))) (exists ((z Real)) (and (< l3 z) (< l4 z) (< z u3) (< z u4))) (not (exists ((z Real)) (and (< l1 z) (< l3 z) (< z u1) (< z u3)))) (not (exists ((z Real)) (and (< l2 z) (< l4 z) (< z u2) (< z u4)))))))

(apply qe)
