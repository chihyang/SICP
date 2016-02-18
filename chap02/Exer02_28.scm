(define (fringe items)
  (cond ((null? items) items)
        ((pair? (car items))
         (append (fringe (car items)) (fringe (cdr items))))
        (else
         (append (list (car items)) (fringe (cdr items))))))
