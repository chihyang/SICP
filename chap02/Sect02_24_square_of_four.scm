(load "Exer02_44.scm")
(define (square-of-four tl tr bl br)
  (lambda (painter)
    (let ((top (beside (tl painter) (tr painter)))
          (bottom (beside (bl painter) (br painter))))
      (below bottom top))))
(define flipped-pairs
  (square-of-four identity flip-vert identity flip-vert))
(define (square-limit painter n)
  (let ((combine4 (square-of-four flip-horiz identity
                                  identity flip-vert))))
  (combine4 (corner-split painter n)))
