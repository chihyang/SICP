(define (fringe items)
  (cond ((null? items) items)
        (not (pair? items) (list items))
        (else (append (fringe (car items))
                      (fringe (cdr items))))))
