(load "Sect02_24_transform_painter.scm")
(define (below painter1 painter2)
  (let ((split-point (make-vect 0.0 0.5)))
    (let ((paint-up
           (transform-painter
            painter1
            split-point
            (make-vect 0.0 1.0)
            (make-vect 1.0 0.5)))
          (paint-down
           (transform-painter
            (make-vect 0.0 0.0)
            split-point
            (make-vect 1.0 0.0))))
      (lambda (frame)
        (paint-up frame)
        (paint-down frame)))))
