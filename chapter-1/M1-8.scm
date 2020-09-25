; power-close-to finds the smallest power of its first argument that is greater
; than its second argument.

(define (power-close-to b n)
  (define (power-iter e)
    (if (> (expt b e) n)
        e
        (power-iter (+ e 1))))

  (power-iter 1))


; tests
(= (power-close-to 2 8) 4)
(= (power-close-to 3 25) 3)
(= (power-close-to 10 9999) 4)