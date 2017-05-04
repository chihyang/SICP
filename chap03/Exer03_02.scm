(define (make-monitored f)
  (let ((counter 0))
    (define (how-many-calls)
      counter)
    (define (reset-count)
      (set! counter 0)
      "Reset counter to 0")
    (define (dispatch . m)
      (cond ((eq? (car m) 'how-many-calls) (how-many-calls))
            ((eq? (car m) 'reset-count) (reset-count))
            (else (begin
                    (set! counter (1+ counter))
                    (apply f m)))))
    dispatch))
(define s (make-monitored +))
(s 100 200)
(s 20)
(s 'how-many-calls)
(s 'reset-count)
(define s2 (make-monitored sqrt))
(s2 20)
(s2 300)
(s2 'how-many-calls)