#lang racket
(define-syntax for!
  (lambda (x)
      (syntax-case x ()
        (
          (for! (iterator from to) body)
          (syntax
           (let loop((iterator from))
             (when (< iterator to)
               body
          (loop (+ 1 iterator))
        )
      ))
        )
)))

(for! (i 0 15) (displayln i))