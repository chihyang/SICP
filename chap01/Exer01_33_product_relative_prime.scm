(load "Exer01_33_filter_recursive.scm")
(load "Sect01_25_gcd.scm")
(load "Sect01_31_identity.scm")
(load "Sect01_31_inc.scm")
(define (product-relative-prime n)
  (define (relative-prime? x)
     (= 1 (gcd x n)))
  (filter-accumulate relative-prime? * 1 identity 1 inc n))