(define (sum-of-sqaure-for-two-largest x y z)
     (if (= x (which-is-larger x y))
         (sum-of-sqaures x (which-is-larger y z))
         (sum-of-sqaures y (which-is-larger x z))
     )
)

(define (sum-of-sqaures a b)
    (+ (sqaure a) (sqaure b))
)

(define (sqaure number) (* number number))

(define (which-is-larger a b)
    (if (> a b)
      a
      b
    )
)
