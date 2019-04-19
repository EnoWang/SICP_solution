(define (last-pair elems)
 (let ( (cur (car elems) ))
  (if (null? (cdr elems))
   cur
   (last-pair (cdr elems)))))

(define l (list 1 2 3 4))