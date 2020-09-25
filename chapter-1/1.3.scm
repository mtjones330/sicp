(define (square-and-sum-two-largest a b c)
  (define (square x) (* x x))
  (define (sum-of-squares a b) (+ (square a) (square b)))

  (cond ((and (< a b) (< a c)) (sum-of-squares b c))
        ((and (< c a) (< c b)) (sum-of-squares a b))
        ((and (< b c) (< b a)) (sum-of-squares c a))
        (else (sum-of-squares a a))))

(= (square-and-sum-two-largest 1 2 3) 13)
(= (square-and-sum-two-largest 3 1 2) 13)
(= (square-and-sum-two-largest 2 3 1) 13)

(= (square-and-sum-two-largest 2 3 3) 18)
(= (square-and-sum-two-largest 3 2 3) 18)
(= (square-and-sum-two-largest 3 3 2) 18)

(= (square-and-sum-two-largest 3 3 3) 18)