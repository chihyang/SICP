(define (filtered-accumulate filter combiner null-value term a next b)
  (cond ((> a b) null-value)
        ((filter a)
         (combiner (term a)
                   (filtered-accumulate filter combiner null-value term (next a) next b)))
        (else (combiner null-value
                        (filtered-accumulate filter combiner null-value term (next a) next b)))))
