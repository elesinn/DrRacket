#lang racket
;;определить If как макрос
(define-syntax If
  (lambda (x)
    ;;установить, что "then" и "else" - это ключевые слова
    (syntax-case x (then else cout <<)
      (
        ;;шаблон для соответствия
        (If condition { cout << yes-result } else { cout << no-result })
        ;;преобразователь
        (syntax (if condition yes-result no-result))
       )
)))
;;Пример использования
(define a 2)
(define b 1)
(If (< a b)
      {
        cout << a
      }
     else
      {
        cout << b
      }
 )