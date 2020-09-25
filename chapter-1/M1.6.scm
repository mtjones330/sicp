; Given the coefficients of a quadratic equation, smallest-real-part returns
; the absolute smallest real part.

(define (smallest-real-part a b c)
  (define (discriminant) (- (* b b) (* 4 a c)))

  (define (real-part)
    (/ (- b) (* 2 a)))

  (define (is-complex?)
    (< (discriminant) 0))

  (define (min-by-abs x y)
    (if (< (abs x) (abs y))
        x
        y))

  (define (root operator)
    (/ (operator (- b)
                 (sqrt (discriminant)))
       (* 2 a)))

  (define (smallest-root)
    (min-by-abs (root +) (root -)))

  (if (is-complex?)
      (real-part)
      (smallest-root)))


; root + tests
(= (smallest-real-part 5 6 1) (- 1/5))
(= (smallest-real-part 1 2 3) (- 1))

; root - tests
(= (smallest-real-part (- 8) (- 14) 15) 0.75)

; real-part tests
(= (smallest-real-part 3 2 1) (- 1/3))
(= (smallest-real-part 5 2 1) (- 1/5))
(= (smallest-real-part 1 4 6) (- 2))

; zero discriminant tests
(= (smallest-real-part 2 4 2) (- 1))

; zero coefficient tests
(= (smallest-real-part 5 6 0) 0)
(= (smallest-real-part 5 0 6) 0)
(= (smallest-real-part 5 0 0) 0)