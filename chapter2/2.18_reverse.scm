(define (reverse items)
 (if (null? items)
  items
  (cons (reverse (cdr items)) (car items))
 ))


; from book
(define nil '())
(define (reverse items)
 (define (iter items result)
  (if (null? items)
   result
   (iter (cdr items) (cons (car items) result))))

 (iter items nil))
