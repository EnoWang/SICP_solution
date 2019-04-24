(define (make-account balance password)
 (let ((count 0)
       (limit 7)))
 (define (withdraw amount)
  (if (>= balance amount)
   (begin (set! balance (- balance amount))
          balance)
   "Not enough money"))
 (define (deposit amount)
  (set! balance (+ balance amount))
  balance)
 (define (dispatch pass m)
  (if (not (eq? pass password))
   (begin (set! count (+ count 1))
          (if (> count limit)
           (call-the-cops)
           (lambda (amount) "Wrong password")))
   (begin (set! count 0)
          (cond ((eq? m 'withdraw) withdraw)
           ((eq? m 'deposit) deposit)
           (else (error "Unknown call -- MAKE-ACCOUNT"
                        m))))))
 dispatch)