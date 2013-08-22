
(define (new-if predicate then-clause else-clause)
  (cond [predicate then-clause]
        [else else-clause]))

(define (square x)
  (* x x))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x)
               x)))

(define (improve guess x)
  (average guess(/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(displayln (new-if (= 2 3) (+ 0 1) (+ 3 5)))

(displayln (new-if (= 1 1) (+ 0 1) (+ 3 5)))

(displayln (sqrt 9))

(displayln (sqrt (+ 100 37)))

(displayln (sqrt (+ (sqrt 2) (sqrt 3))))

(displayln (square (sqrt 1000)))
