(define x '#t)
(define y '#t)
(define z '#t)

(define (exam a b c)
	(define (test a b)
  		(if (and (boolean? a)
           		 (boolean? b)
           		 (eqv? a b)
           		 (eqv? a #t))
      			 #t
      			 #f))
	(if (or (test a b) 
			(test a c) 
			(test b c)) 
	     	#t 
	     	#f))

(exam x y z)

(define x '#f)
(define y '#f)
(define z '#t)

(exam x y z)