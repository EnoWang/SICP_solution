// Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers.

(define (square x) (* x x))
(define (sumsquares x y) (+ (square x) (square y)))
(define (two-sum-square a b c) 
    (cond 
         ((and (>= a c) (>= b c)) (sumsquares a b)) 
         ((and (>= b a) (>= c a)) (sumsquares b c)) 
         ((and (>= a b) (>= c b)) (sumsquares a c))
    )
)