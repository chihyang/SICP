(load "Exer01_32_accumulate_recursive.scm")
(define (product term a next b)
  (accumulate * 1 term a next b))
