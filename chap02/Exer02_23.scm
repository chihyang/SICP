(define (for-each proc items)
  (define (iter lst result)
    (if (null? lst)
        #t
        (iter (cdr lst)
              (proc (car lst)))))
  (iter items (car items)))
