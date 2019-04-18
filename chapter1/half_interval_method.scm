(define (search f neg-point pos-point)
 (let ((midpoint (average neg-point pos-point)))
  (if (good-enough? neg-point pos-point) mid-point
   (let (mid-val (f mid-point))
    (if (neg? mid-val)
     (search f mid-point pos-point)
     (search f neg-point mid-point))))))


(define (search f neg-point pos-point)
 (let ((midpoint (average neg-point pos-point)))
  (if (close-enough? neg-point pos-point)
   midpoint
   (let ((test-value (f midpoint)))
    (cond ((positive? test-value)
           (search f neg-point midpoint))
     ((negative? test-value)
      (search f midpoint pos-point))
     (else midpoint))))))