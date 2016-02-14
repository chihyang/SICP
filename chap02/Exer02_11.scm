(load "Exer02_07.scm")
(define (<= a b)
  (or (< a b) (= a b)))
(define (>= a b)
  (or (> a b) (= a b)))
(define (mul-interval x y)
  (let ((xl (lower-bound x))
        (xu (upper-bound x))
        (yl (lower-bound y))
        (yu (upper-bound y)))
    (cond ((< xu 0)
           (cond ((< yu 0)
                  (make-interval (* xl yl) (* yl yu)))
                 ((and (< yl 0) (>= yu 0))
                  (make-interval (* xl yl) (* xl yu)))
                 (else
                  (make-interval (* xl yu) (* xu yl)))))
          ((and (< xl 0) (>= xu 0))
           (cond ((< yu 0)
                  (make-interval (* yl xl) (yl xu)))
                 ((and (< yl 0) (>= yu 0))
                  (make-interval (min (* xl yu) (* xu yl))
                                 (max (* xl yl) (* xu yl))))
                 (else
                  (make-interval (* xl yu) (* xu yl)))))
          (else
           (cond ((< yu 0)
                  (make-interval (* xl yu) (* xu yl)))
                 ((and (< yl 0) (>= yu 0))
                  (make-interval (* xl yu) (* xu yl)))
                 (else
                  (make-interval (* xl yl) (* xu yu))))))))
