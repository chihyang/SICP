(load "Exer02_29_a.scm")
(define (total-weight mobile)
  (cond ((null? mobile) 0)
        ((not (pair? (right-branch mobile)))
         (branch-structure mobile))
        ((branch? mobile)
         (+ (total-weight (left-branch (right-branch mobile)))
            (total-weight (right-branch (right-branch mobile)))))
        (else (+ (total-weight (left-branch mobile))
            (total-weight (right-branch mobile))))))
(define (branch? object)
  (and (not (pair? (left-branch object)))
       (not (null? (right-branch object)))))
