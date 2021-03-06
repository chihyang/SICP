(define (deep-reverse items)
  (cond ((null? items) items)
        ((pair? (car items))
         (append (deep-reverse (cdr items)) (list (reverse (car items)))))
        (else
         (append (deep-reverse (cdr items)) (list (car items))))))
