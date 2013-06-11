(load "prime.scm")

(define (timed-prime-test number)
  (newline)
  (display x)
  (start-prime-test x runtime))

(define (start-prime-test x start-time)
  (if (prime? x)
    (report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))
