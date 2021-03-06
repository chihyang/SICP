(load "Exer01_30.scm")
(load "Sect01_24_even_odd.scm")
(define (simpson-integral f a b n)
  (define (term x)
    (cond ((or (= x a) (= x b)) (f x))
          ((odd? (/ (- x a) (/ (- b a) n))) (* 4 (f x)))
          (else (* 2 (f x)))))
  (define (next x)
    (+ x (/ (- b a) n)))
  (* (sum term a next b)
     (/ (- b a) 3.0 n)))
