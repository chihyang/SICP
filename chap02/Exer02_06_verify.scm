;; church numerals
(load "Exer02_06.scm")
(define s 1+)
(define z 0)
((zero s) z)
((one s) z)
((two s) z)
(((+ two two) s) z)
(((* two two) s) z)
;; church bool
(((not tru) 1) 0)
(((and tru fls) 1) 0)
(((and tru tru) 1) 0)
(((or tru tru) 1) 0)
