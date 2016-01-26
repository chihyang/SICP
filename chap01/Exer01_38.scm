(load "Exer01_37_cont_frac.scm")
(define (e-term k)
  (define (D i)
  (if (= 0 (remainder (+ i 1) 3))
      (* (/ (+ i 1) 3) 2)
      1))
  (+ 2.0
     (cont-frac (lambda (i) 1)
                D
                k)))
