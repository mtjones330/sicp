;;;; pascal-element calculates the zero based n-th row and k-th element in
;;;; Pascal's triangle using the permutation formula and a custom
;;;; factorial implementation that evolves recursively.

(define (! n)
  (if (< n 2)
      1
      (* n (! (- n 1)))))

(define (pascal-element n k)
  (/ (! n)
     (* (! k)
        (! (- n k)))))


(pascal-element 0 0)
(pascal-element 1 0)
(pascal-element 1 1)
(pascal-element 2 0)
(pascal-element 2 1)
(pascal-element 2 2)
(pascal-element 3 0)
(pascal-element 3 1)
(pascal-element 3 2)
(pascal-element 3 3)
(pascal-element 4 0)
(pascal-element 4 1)
(pascal-element 4 2)
(pascal-element 4 3)
(pascal-element 4 4)
(pascal-element 5 0)
(pascal-element 5 1)
(pascal-element 5 2)
(pascal-element 5 3)
(pascal-element 5 4)
(pascal-element 5 5)