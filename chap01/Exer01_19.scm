(define (fib n)
    (fib-iter 1 0 0 1 n))
(define (fib-iter a b p q count)
    (cond ((= count 0) b)
           ((even? count)
            (fib-iter a
                      b
                      (sum-of-squares p q)     ; compute p'
                      (+ (square q) (* 2 p q)) ; compute q'
                      (/ count 2)))
           (else (fib-iter (+ (* b q) (* a q) (* a p))
                           (+ (* b p) (* a q))
                           p
                           q
                           (- count 1)))))
(define (sum-of-squares x y)
    (+ (square x) (square y)))
(define (square a)
    (* a a))
(define (even? n)
    (= (remainder n 2) 0))
