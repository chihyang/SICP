(load "Sect02_34_huffman_trees.scm")
(define (generate-huffman-tree pairs)
  (successive-merge (make-leaf-set pairs)))
(define (successive-merge pairs)
  (cond ((null? pairs) '())
        ((null? (cdr pairs)) (car pairs))
        (else
         (successive-merge (adjoin-set (make-code-tree (car pairs) (cadr pairs))
                                       (cddr pairs))))))
