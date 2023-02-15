;Declaring propositional variables 
;Nodes are 0,1,2,3 and colors are 0,1,2
;pij denotes node i having colour j.
(declare-const p00 Bool)
(declare-const p01 Bool)
(declare-const p02 Bool)
(declare-const p10 Bool)
(declare-const p11 Bool)
(declare-const p12 Bool)
(declare-const p20 Bool)
(declare-const p21 Bool)
(declare-const p22 Bool)
(declare-const p30 Bool)
(declare-const p31 Bool)
(declare-const p32 Bool)
(declare-const p40 Bool)
(declare-const p41 Bool)
(declare-const p42 Bool)



;Propositional formula asserting each node should have at least one colour
(assert (or p00 (or p01 p02)))
(assert (or p10 (or p11 p12)))
(assert (or p20 (or p21 p22)))
(assert (or p30 (or p31 p32)))
(assert (or p40 (or p41 p42)))

;Propositional formula asserting each node can have almost one colour
(assert (=> p00 (not (or p01 p02))))
(assert (=> p01 (not (or p00 p02))))
(assert (=> p02 (not (or p00 p01))))

(assert (=> p10 (not (or p11 p12))))
(assert (=> p11 (not (or p10 p12))))
(assert (=> p12 (not (or p10 p11))))

(assert (=> p20 (not (or p21 p22))))
(assert (=> p21 (not (or p20 p22))))
(assert (=> p22 (not (or p20 p21))))

(assert (=> p30 (not (or p31 p32))))
(assert (=> p31 (not (or p30 p32))))
(assert (=> p32 (not (or p30 p31))))

(assert (=> p40 (not (or p41 p42))))
(assert (=> p41 (not (or p40 p42))))
(assert (=> p42 (not (or p40 p41))))

;Propositional formula asserting no two adjacent nodes can have the same colour
(assert (not ((_ at-least 1) (and p00 p10) (and p01 p11) (and p02 p12))))
(assert (not ((_ at-least 1) (and p00 p20) (and p01 p21) (and p02 p22))))
(assert (not ((_ at-least 1) (and p10 p20) (and p11 p21) (and p12 p22))))
(assert (not ((_ at-least 1) (and p10 p30) (and p11 p31) (and p12 p32))))
(assert (not ((_ at-least 1) (and p10 p40) (and p11 p41) (and p12 p42))))
(assert (not ((_ at-least 1) (and p20 p30) (and p21 p31) (and p22 p32))))
(assert (not ((_ at-least 1) (and p20 p40) (and p21 p41) (and p22 p42))))

(check-sat)
(get-model)



