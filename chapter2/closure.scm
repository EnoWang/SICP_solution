(list 1 2 3 4)

; listref: return the nth of the list
(define (listref list n)
 (define  (get-next list cur n )
  ( if (= cur n)
    (car list)
    (get-next (cdr list) (+ 1 cur) n)))
 (get-next list 0 n))
(define l (list 1 2 3 4))
(listref l 1)

; from book
(define (list-ref items n)
 (if (= n 0)
  (car items)
  (list-ref (cdr items) (- n 1))))
(define squares (list 1 4 9 16 25))
(list-ref squares 3)


; get the length of the list (recursive way)
(define (length l)
 (if (null? l) 0
   (+ 1 (length (cdr l)))))

; get the length of the list (iterative way)
(define (length l)
 (define (iter-length l result)
  (if (null? l) result
   (iter-length (cdr l) (+ 1 result))))
 (iter-length l 0))

; append two list
(define (append l1 l2)
 (if (null? l2)
  l1
  (append (cons l1 (car l2)) (cdr l2))))

; from book
(define (append list1 list2)
 (if (null? list1)
  list2
  (cons (car list1) (append (cdr list1) list2))))

(define list1 (list 1 2 3 4))
(define list2 (list 5 6 7 8))