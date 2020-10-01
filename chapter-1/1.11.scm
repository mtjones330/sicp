;;; f(n) = n                                  if n < 3
;;; f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3)   if n >= 3

;;; Recursive solution

(define (f n)
  (if (< n 3)
      n
      (+ (* 1 (f (- n 1)))
         (* 2 (f (- n 2)))
         (* 3 (f (- n 3))))))


;;; Iterative solution

(define (g n)
  (define (next a b c)
    (+ (* 1 c)
       (* 2 b)
       (* 3 a)))

  (define (g-iter a b c n)
    (if (= n 0)
        c
        (g-iter b c (next a b c) (- n 1))))

  (if (< n 3)
      n
      (g-iter 0 1 2 (- n 2))))


(= (f 0) 0)
(= (f 1) 1)
(= (f 2) 2)
(= (f 3) 4)
(= (f 4) 11)
(= (f 5) 25)

(= (g 0) 0)
(= (g 1) 1)
(= (g 2) 2)
(= (g 3) 4)
(= (g 4) 11)
(= (g 5) 25)