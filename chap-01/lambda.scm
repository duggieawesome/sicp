(define (plux4 x) (+ x 4))

(define plus4-lambda (lambda (x) (+ x 4)))

(define (f x y)
  (let ((a (+ 1 (* x y)))
        (b (- 1 y)))
    (+ (* x ( square a))
       (* y b)
       (* a b))))
