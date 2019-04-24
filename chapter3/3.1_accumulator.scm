;(define (make-accumulator initial)
 ;(let ( (total initial))
  ;(define (add amount)
   ;(lambda (amount)
    ;(set! total (+ total amount))
   ;))
  ;add))

(define (make-accumulator initial-value)
 (let ((sum initial-value))
  (lambda (n)
   (set! sum (+ sum n))
   sum)))

(define (make-accumulator initial)
 (let ( (sum initial))
  (lambda (amount) (set! sum (+ sum amount)) sum)))

