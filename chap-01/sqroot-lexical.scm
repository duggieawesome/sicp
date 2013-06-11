; TODO: Define 'average'
(define (sqroot x)
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (sqroot-iter guess)
    (if (good-enough? guess)
      guess
      (sqroot-iter (improve guess))))
  (define (square x) (* x x))
  (sqroot-iter 1.0))
