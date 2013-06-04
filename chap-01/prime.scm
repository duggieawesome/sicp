(define (prime? number)
  (= number (smallest-divisor number)))

(define (smallest-divisor number)
  (find-divisor number 2))

(define (find-divisor number test-divisor)
  (cond ((> (square test-divisor) number) number)
        ((divides? test-divisor number) test-divisor)
        (else (find-divisor number (+ test-divisor 1)))))

(define (square x)
  (* x x))

(define (divides? a b)
  (= (remainder b a) 0))
