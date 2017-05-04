(define (rand m)
  (let ((x random-init))
    (lambda ()
      (cond ((eq? m 'generate)
             (begin (set! x (random-update x))
                    x))
            ((eq? m 'reset)
             (lambda (new-init)
               (set! random-init new-init)))))))
