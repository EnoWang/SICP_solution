(define (multi x y) (* x y))
(define (plus x y) (+ x y))
(define (abs x)
 (if (> x 0) x
  (- 0 x)))
(define (square x)
 (* x x))

(define (make-point x y) (cons x y))
(define (x-point p) (car p))
(define (y-point p) (cdr p))

(define (make-segment start-point end-point)
 (cons start-point end-point))
(define (start-segment segment) (car segment))
(define (end-segment segment) (cdr segment))

(define (cal-len x1 y1 x2 y2)
 (+ (square (abs (- x1 x2))) (square (abs (- y1 y2)))))

(define (len segment)
 (let (
        (x1 (x-point (start-segment segment)))
        (y1 (y-point (start-segment segment)))
        (x2 (x-point (end-segment segment)))
        (y2 (y-point (end-segment segment))))
  (cal-len x1 y1 x2 y2)))

(define (process-rectangle process x-seg y-seg)
 (process (len x-seg) (len y-seg)))

//test
(define (test)
 (let (
        (p1 (make-point 0 0))
        (p2 (make-point 1 0))
        (x-seg (make-segment p1 p2))
        (p3 (make-point 0 0))
        (p4 (make-point 0 1))
        (y-seg (make-segment p3 p3)))
  (process-rectangle multi x-seg y-seg)))


(define (cons x y)
 (lambda (m) (m x y)))
(define (car z)
 (z (lambda (p q) p)))