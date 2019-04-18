// recursive product
(define (product term a next b)
    (if (> a b) 1
       (* (term a) (product term (next a) next b)))

// iterative product
(define (product term a next b)
    (define (iter-product a result)
        (if (> a b) result
            (iter-product (next a) (* (term a) result))))
    (iter-product a 1))

// factorial
(define (identity x) x) 
(define (next x) (+ x 1))

(define (factorial n) 
 (product identity 1 next n)) 

// pi calculation
(define (pi-term n) 
   (if (even? n) 
       (/ (+ n 2) (+ n 1)) 
       (/ (+ n 1) (+ n 2)))) 
(* (product pi-term 1 next 6) 4) 

