(load "Sect02_24_transform_operations.scm")
(load "Exer02_50.scm")
(define (below painter1 painter2)
  (beside
   (rotate270 painter1)
   (rotate270 painter2)))
