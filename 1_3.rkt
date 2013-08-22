(define (procedure a b c)
  (cond 
    [(and (> a c) (> b c)) (+ (* a a) (* b b))]
    [(and (> a b) (> c b)) (+ (* a a) (* c c))]
    [(and (> b a) (> c a)) (+ (* b b) (* c c))]))

(displayln (= (+ 9 16) (procedure 2 3 4)))

(displayln (= (+ 25 16) (procedure 5 4 3)))

(displayln (= (+ 36 25) (procedure 6 4 5)))
