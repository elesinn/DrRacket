#lang racket
(define (integrate f a b n)
  (define h (/ (- b a) n))
  (define (I k) (f (+ a (* k h))))
  (define (sum term a next b)
    (define (iter a result)
      (if (> a b) 
          result
          (iter (next a) (+ (term a) result)))
      ) (iter a 0))
  (define (next n) (+ n 2))
  (* (/ h 3.0) (+ (I 0) (I n) (* 4 (sum I 1 next (- n 1))) (* 2 (sum I 2 next (- n 2))))))

(integrate (lambda (x) (+ (* x x 10) (* 11 x) 7) ) 1 2 1000)
