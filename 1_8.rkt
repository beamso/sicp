
(define (square x)
  (* x x))

(define (cube x)
  (* x x x))

(define (cuberoot-iter guess x)
  (if (good-enough? guess x)
    guess
    (cuberoot-iter (improve guess x)
                   x)))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.001))

(define (cuberoot x)
  (cuberoot-iter 1.0 x))

(displayln (cube 2))

(displayln (cube 3))

(displayln (= (/ 5 3) (improve 2 4)))

(displayln (cuberoot 8))

(displayln (cuberoot 27))

(displayln (cuberoot 64))

(displayln (cube (cuberoot 1000)))
