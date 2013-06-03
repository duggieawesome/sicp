; Recursive

(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1))
                 (* 2 (f (- n 2)))
                 (* 3 (f (- n 3)))))))

; Iterative

(define (i n)
  (define (i-iterative x y z n)
    (if (< n 3)
      x
      (i-iterative (+ x (* 2 y) (* 3 z)) x y (- n 1))))
  (if (< n 3)
    n
    (i-iterative 2 1 0 n)))
