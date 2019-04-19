(define (make-resistor r tolerance) (cons (* (- 1 tolerance) r) (* (+ 1 tolerance) r)))
(define (get-lower resistor) (car resistor))
(define (get-upper resistor) (cdr resistor))

// there is another way to calculate it, make it simplier
(define (f R1 R2)
 (/ 1 (+ (/ 1 R1) (/ 1 R2))))

(define (resistance-calc resistor1 resistor2)
 (cons (f (get-lower resistor1) (get-lower resistor2))  (f (get-upper resistor1) (get-upper resistor2))))


// test
(define resistor1 (make-resistor 6.8 0.1))
(define resistor2 (make-resistor 4.7 0.05))
(resistance-calc resistor1 resistor2)
