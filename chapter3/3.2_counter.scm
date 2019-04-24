(define (make-monitored f)
 (let ((count 0))
  (define (dispatch message)
   (cond ((eq? message 'how-many-calls?) count)
    ((eq? message 'reset-count) (begin (set! count 0) count))
    (else (begin (set! count (+ 1 count)) (f message)))))
  dispatch))

(define (sqrt a)
 (* a a))

(a 1)
(a 'how-many-calls?)
(a 'reset-count)
