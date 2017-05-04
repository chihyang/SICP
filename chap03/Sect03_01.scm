;;; section 3.1.1
(define balance 100)
(define (withdraw amount)
  (if (>= balance amount)
      (begin (set! balance (- balance amount))
             balance)
      "Insufficient funds"))
(withdraw 10)
;;; Note: every time we call new-withdraw, the result is different, which means
;;; substitution model doesn't work here
(define new-withdraw
  (let ((balance 100))
    (lambda (amount)
      (if (>= balance amount)
      (begin (set! balance (- balance amount))
             balance)
      "Insufficient funds"))))
(new-withdraw 20)
(new-withdraw 39)
(new-withdraw 20)
(define (make-withdraw balance)
  (lambda (amount)
    (if (>= balance amount)
      (begin (set! balance (- balance amount))
             balance)
      "Insufficient funds")))
(define W1 (make-withdraw 100))
(define W2 (make-withdraw 100))
(W1 20)
(W2 20)
(W1 10)
(W2 0)
(define (make-account balance)
  (define (withdraw amount)
    (if (>= balance amount)
      (begin (set! balance (- balance amount))
             balance)
      "Insufficient funds"))
  (define (deposit amount)
    (set! balance (+ balance amount))
    balance)
  (define (dispatch m)
    (cond ((eq? m 'withdraw) withdraw)
          ((eq? m 'deposit) deposit)
          (else (error "Unknown request: MAKE-ACCOUNT"
                       m))))
  dispatch)
(define acc (make-account 100))
((acc 'deposit) 100)
((acc 'withdraw) 200)
(define acc2 (make-account 200))
((acc2 'deposit) 80)
;;; section 3.1.2
