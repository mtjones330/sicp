; sqrt recursively approximates the square root until the difference between
; the radicand and guess^2 is less than 0.001.

(define (sqrt radicand)
  (define (sqrt-iter guess)
    (if (good-enough? guess)
        guess
        (sqrt-iter (improve guess))))

   (define (good-enough? guess)
    (< (abs (- (* guess guess) radicand)) 0.001))

  (define (improve guess)
    (average (/ radicand guess) guess))

  (define (average a b)
    (/ (+ a b) 2))

    (sqrt-iter 1.0))


; sqrt2 recursively approximates the square root until the difference between
; two subsequent guesses is less than 0.001.

(define (sqrt2 radicand)
  (define (sqrt-iter guess last-guess)
    (if (good-enough? guess last-guess)
        guess
        (sqrt-iter (improve guess) guess)))

  (define (good-enough? guess last-guess)
    (< (abs (- guess last-guess)) 0.001))

  (define (improve guess)
    (average (/ radicand guess) guess))

  (define (average a b)
    (/ (+ a b) 2))

  (sqrt-iter 1.0 0.0))


(sqrt 4)  ; = 2.0000000929222947 (correct)
(sqrt2 4) ; = 2.0000000929222947 (correct)

(sqrt 0.001)  ; = 0.04124542607499115 (wrong)
(sqrt2 0.001) ; = 0.03162278245070105 (correct)

; (sqrt 10000000000000000000000000000000000000000000000000) ; = gets stuck in a loop due to (* guess guess) overflowing inside of good-enough?
(sqrt2 10000000000000000000000000000000000000000000000000)  ; = 3.162277660168379e24 (correct)
