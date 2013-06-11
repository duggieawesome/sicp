; Example of block structure
;
(define (sqroot x)
  (define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess x) (average guess (/ x guess)))
  (define (sqroot-iter guess x)
    (if (good-enough? guess x)
      guess
      (sqroot-iter (improve guess x) x)))
  (sqroot-iter 1.0 x))
