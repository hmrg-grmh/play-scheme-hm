
#| some def |#
(define (=? a b) (= a b) )
(define (or? a b) (or a b) )

;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;


#| classic fib |#
(define (fib n)
        (if (or? (=? n 0) (=? n 1)) n
            (+ (fib (- n 1)) (fib (- n 2)))
        )
)

;; (fib 4) need:
;;     (fib 3) need:
;;         (fib 2) need:
;;             (fib 1) = 1 <-:
;;             (fib 0) = 0 <-:
;;         = 1
;;         (fib 1) = 1 <-:
;;     = 2
;;     (fib 2) need:
;;         (fib 1) = 1 <-:
;;         (fib 0) = 0 <-:
;;     = 1
;; = 3 ->:




#| tail invoke fib |#
(define (fib n)
        (define (fib-iter a b count)
                (if (=? 0 count) b 
                    (fib-iter (+ a b) a (- count 1))
                )
        )
        (fib-iter 1 0 n)
)

;; (fib 4) same:
;; (fib-iter 1 0 4) same:
;; (fib-iter 1 1 3) same:
;; (fib-iter 2 1 2) same:
;; (fib-iter 3 2 1) same:
;; (fib-iter 5 3 0) = 3 <-: ->:



#| desc desc |#

;; need: need to got the func value to get(=) the res
;; same: tail invoke
;; <-: get(=) the res without need:
;; ->: whole func res



#|-------------|#
;; end of file ;;
