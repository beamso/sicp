(displayln (= 10 10))

(displayln (= 12 (+ 5 3 4)))

(displayln (= 8 (- 9 1)))

(displayln (= 3 (/ 6 2)))

(displayln (= 6 (+ (* 2 4) (- 4 6))))

(define a 3)

(define b (+ a 1))

(displayln (= 19 (+ a b (* a b))))

(displayln (= 4 (if (and (> b a) (< b (* a b)))
                  b
                  a)))

(displayln (= 16 (cond [(= a 4) 6]
                       [(= b 4) (+ 6 7 a)]
                       [else 25])))

(displayln (= 6 (+ 2 (if (> b a) b a))))

(displayln (= 16 (* (cond [(> a b) a]
                         [(< a b) b]
                         [else -1])
                   (+ a 1))))
