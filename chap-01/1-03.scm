(define (sum-of-square-for-two-largest x y z)
     (if (= x (which-is-larger x y))
         (sum-of-squares x (which-is-larger y z))
         (sum-of-squares y (which-is-larger x z))
     )
)

(define (sum-of-squares a b)
    (+ (square a) (square b))
)

(define (square number) (* number number))

(define (which-is-larger a b)
    (if (> a b)
      a
      b
    )
)
