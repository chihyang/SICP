 (load "Sect02_24_segments_painter.scm")
(define wave
  (segments->painter
   (list (make-segment (make-vect 0.4 1.0) (make-vect 0.35 0.85)); 头部左上
         (make-segment (make-vect 0.35 0.85) (make-vect 0.4 0.64))   ; 头部左下
         (make-segment (make-vect 0.4 0.65) (make-vect 0.25 0.65))    ; 左肩
         (make-segment (make-vect 0.25 0.65) (make-vect 0.15 0.6))  ; 左手臂上部
         (make-segment (make-vect 0.15 0.6) (make-vect 0.0 0.85))  ; 左手上部
         (make-segment (make-vect 0.0 0.65) (make-vect 0.15 0.35))    ; 左手下部
         (make-segment (make-vect 0.15 0.35) (make-vect 0.25 0.6))   ; 左手臂下部
         (make-segment (make-vect 0.25 0.6) (make-vect 0.35 0.5))     ; 左边身体
         (make-segment (make-vect 0.35 0.5) (make-vect 0.25 0.0))    ; 左腿外侧
         (make-segment (make-vect 0.6 1.0) (make-vect 0.65 0.85))     ; 头部右上
         (make-segment (make-vect 0.65 0.85) (make-vect 0.6 0.65))  ; 头部右下
         (make-segment (make-vect 0.6 0.65) (make-vect 0.75 0.65))    ; 右肩
         (make-segment (make-vect 0.75 0.65) (make-vect 1.0 0.3))   ; 右手上部
         (make-segment (make-vect 1.0 0.15) (make-vect 0.6 0.5))    ; 右手下部
         (make-segment (make-vect 0.6 0.5) (make-vect 0.75 0.0))    ; 右腿外侧
         (make-segment (make-vect 0.4 0.0) (make-vect 0.5 0.3))    ; 左腿内侧
         (make-segment (make-vect 0.6 0.0) (make-vect 0.5 0.3))     ; 右腿内侧
         (make-segment (make-vect 0.4 0.8) (make-vect 0.5 0.7))     ; 微笑
         (make-segment (make-vect 0.5 0.7) (make-vect 0.6 0.8))     ; 微笑
         )))
