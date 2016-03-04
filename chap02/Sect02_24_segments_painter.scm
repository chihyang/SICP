(load "Sect02_24_frame_coord_map.scm")
(load "Exer02_48.scm")
(load "Sect02_24_draw_line.scm")
(define (segments->painter segment-list)
  (lambda (frame)
    (for-each
     (lambda (segment)
       (draw-line
        ((frame-coord-map frame)
         (start-segment segment))
        ((frame-coord-map frame)
         (end-segment segment))))
     segment-list)))
