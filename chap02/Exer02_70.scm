(load "Exer02_68.scm")
(load "Exer02_69.scm")
(define pairs (list (list 'A 2)
                    (list 'GET 2)
                    (list 'SHA 3)
                    (list 'WAH 1)
                    (list 'BOOM 1)
                    (list 'JOB 2)
                    (list 'NA 16)
                    (list 'YIP 9)))
(define tree (generate-huffman-tree pairs))
(define song '(Get a job
               Sha na na na na na na na na
               Get a job
               Sha na na na na na na na na
               Wah yip yip yip yip yip yip yip yip yip
               Sha boom))
(encode song tree)
; Value:
; (1 1 1 1 1 1 1 0 0 1
;  1 1 1 0 1 1 1 0 0 0
;  0 0 0 0 0 0 1 1 1 1
;  1 1 1 0 0 1 1 1 1 0
;  1 1 1 0 0 0 0 0 0 0
;  0 0 1 1 0 1 1 1 0 1
;  0 1 0 1 0 1 0 1 0 1
;  0 1 0 1 0 1 1 1 0 1
;  1 0 1 0)

