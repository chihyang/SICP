(define (perimeter-rectangle rect)
  (* 2 (+ (length-of-segment (width-of-rectangle rect))
          (length-of-segment (length-of-rectangle rect)))))
