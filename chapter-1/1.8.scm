; cube-root recursively approximates the cube root until the difference between the
; radicand and guess^3 is less than 0.001.

(define (cube-root radicand)
  (define (cube-root-iter guess)
    (if (good-enough? guess)
        guess
        (cube-root-iter (improve guess))))

  (define (good-enough? guess)
    (< (abs (- radicand (* guess guess guess))) 0.001))

  (define (improve guess)
    (average guess (/ (+ (/ radicand (* guess guess))
                         (* 2 guess))
                      3)))

  (define (average a b)
    (/ (+ a b) 2))

  (cube-root-iter 1.0))


(cube-root 8)   ; = 2.000047736550133
(cube-root 27)  ; = 3.000029248884439
(cube-root 64)  ; = 4.000017772895599
(cube-root 125) ; = 5.0000068210282596