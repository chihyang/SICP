(load "Exer01_33_filter.scm")
(load "Sect01_31_identity.scm")
(load "Sect01_31_inc.scm")
(load "Sect01_26_fermat_test.scm")
(define (prime-sum a b)
  (filtered-accumulate prime? + 0 identity a inc b))
