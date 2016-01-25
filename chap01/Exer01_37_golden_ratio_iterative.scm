(load "Exer01_37_cont_frac_iterative.scm")
(load "Sect01_33_close_enough.scm")
(load "Sect01_33_sqrt.scm")
(define golden-ratio (/ 2 (+ (sqrt 5) 1)))
(define (test-k-term i)
  (if (close-enough? (cont-frac (lambda (i) 1.0)
                                (lambda (i) 1.0)
                                i)
                     golden-ratio)
      i
      (test-k-term (+ i 1))))
(test-k-term 1)
