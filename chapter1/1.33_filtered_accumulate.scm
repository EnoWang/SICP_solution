// recursive
(define (filtered-accumulator filter combiner null-value term a next b)
 (if (> a b) null-value
  (combiner (if (filter a) (term a)
             null-value)
            (filtered-accumulator filter combiner null-value term (next a) next b))))

// iterative
(define (filtered-accumulate combiner null-value term a next b filter)
 (define (iter a result)
  (cond ((> a b) result)
   ((filter a) (iter (next a) (combiner result (term a))))
   (else (iter (next a) result))))
 (iter a null-value))

// a. sum of squares of prime numbers procedure
(define (sum-of-prime-squares a b) (filtered-accumulate + 0 sq a inc b prime?))

// b. Product of all positive integers les than n that are relatively prime to n
(define (gcd m n)
 (cond ((< m n) (gcd n m))
  ((= n 0) m)
  (else (gcd n (remainder m n)))))

(define (relative-prime? m n)
 (= (gcd m n) 1))

(define (product-of-relative-primes n)
 (define (filter x)
  (relative-prime? x n))
 (filtered-accumulate * 1 identity 1 inc n filter))