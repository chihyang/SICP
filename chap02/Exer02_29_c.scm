(load "Exer02_29_b.scm")
(define (balanced? mobile)
  (and (branch-balanced? (left-branch mobile))
       (branch-balanced? (right-branch mobile))
       (= (torque (left-branch mobile))
          (torque (right-branch mobile)))))
(define (torque branch)
  (* (branch-length branch)
     (branch-weight branch)))
(define (branch-balanced? branch)
  (if (mobile? (branch-structure branch))
      (balanced? (branch-structure branch))
      #t))
