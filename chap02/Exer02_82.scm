(define (apply-generic op . args)
  (let ((type-tags (map type-tag args)))
    (let ((proc (get op type-tags)))
      (if proc
          (apply proc (map contents args))
          (let ((type-tag-converts (convert type-tags)))
            (if type-tag-converts
                (let ((converted-args (apply-operator-to-operand type-tag-converts args)))
                  (let ((evaluator (get op (type-tag converted-args))))
                    (if evaluator
                        (apply evaluator (map type-tag converted-args))
                        (error "No method for these types"
                               (list op type-tags)))))
                (error "No method for these types"
                       (list op type-tags))))
          (error "No method for these types"
                 (list op type-tags))))))
(define (convert types)
  (if (null? types)
      '()
      (convert-iter (car types) '() (cdr types)))
  (define convert-iter
    (lambda (target lst1 lst2)
      (let ((rst1 (mixed-types-to-one lst1 target))
            (rst2 (mixed-types-to-one lst2 target)))
        (cond ((null? rst2)
               (if rst1
                   (append rst1 (list target))
                   #f))
              ((and rst1 rst2)
               (append rst1 (list target) rst2))
              (else
               (convert-iter (car lst2) (append lst1 (list target)) (cdr lst2)))))))
  (define mixed-types-to-one
    (lambda (mixed target)
      (if (null? mixed)
          '()
          (let ((rst (get-coercion (car mixed) target)))
            (if rst
                (cons rst (mixed-types-to-one (cdr mixed) target))
                #f))))))
(define (apply-operator-to-operand op args)
  (cond ((null? args) '())
        ((atom? (cons (car op)
                      (apply-operator-to-operand (cdr op) (cdr args)))))
        (else (cons ((car op) (car args))
                    (apply-operator-to-operand (cdr op) (cdr args))))))
(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))
