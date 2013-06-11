; recursive

(define (expt b n)
  (if (= n 0)
    1
    (* b (expt b (- n 1)))))

; iterative

(define (expt b n)
  (expr-iter b n 1))

(define (expt-iter b counter product)
  (if (= counter 0)
    product
    (expt-iter b
               (- counter 1)
               (* b product))))

; faster

(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

(define (square x) (* x x))

