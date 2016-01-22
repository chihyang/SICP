(load "Exer01_32_accumulate.scm")
(define (sum term a next b)
  (accumulate + 0 term a next b))
