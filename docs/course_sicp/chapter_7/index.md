---
comments: true
---

# 模式匹配

=== "Scheme"
	```
	#lang racket

	(define base-env (make-base-namespace))
	(define user-initial-environment (parameterize ([current-namespace base-env])
						base-env))



	;是否是原子?
	(define (atom? x)
	  (and (not (pair? x))
		   (not (null? x))))

	;字典
	(define (make-empty-dictionary) '())
	(define (extend-dictionary pat dat dictionary)
	  (let ((vname (variable-name pat)))
		(let ((v (assq vname dictionary)))
		  (cond ((not v)
				 (cons (list vname dat) dictionary))
				((eq? (cadr v) dat) dictionary)
				(else 'failed)))))
	(define (lookup var dictionary)
	  (let ((v (assq var dictionary)))
		(if (not v)
			var
			(cadr v))))


	;Pattern (+ (* (? x) (? y)) (? y))
	;Expression (+ (* 3 x) x)
	;Dictionary -- ?x = 3, ?y = x
	;? x - arbitrary expression
	;?c x - arbitrary constant
	;?v x - arbitrary variable


	;表达式
	(define (compound? exp) (pair? exp))
	(define (constant? exp) (number? exp))
	(define (variable? exp) (atom? exp))

	;模式
	(define (arbitrary-constant? pattern)
	  (if (pair? pattern)
		  (eq? (car pattern) '?c)
		  false))

	(define (arbitrary-expression? pattern)
	  (if (pair? pattern)
		  (eq? (car pattern) '?)
		  false))

	(define (arbitrary-variable? pattern)
	  (if (pair? pattern)
		  (eq? (car pattern) '?v)
		  false))

	(define (variable-name pattern) (cadr pattern))

	; 模式匹配和简化
	(define (match pattern expression dictionary)
	  (cond ((and (null? pattern) (null? expression))
			 dictionary)
			((eq? dictionary 'failed) 'failed)
			((atom? pattern)
			 (if (atom? expression)
				 (if (eq? pattern expression)
					 dictionary
					 'failed)
				 'failed))
			((arbitrary-constant? pattern)
			 (if (constant? expression)
				 (extend-dictionary pattern expression dictionary)
				 'failed))
			((arbitrary-variable? pattern)
			 (if (variable? expression)
				 (extend-dictionary pattern expression dictionary)
				 'failed))
			((arbitrary-expression? pattern)
			 (extend-dictionary pattern expression dictionary))
			((atom? expression) 'failed)
			(else
			 (match (cdr pattern)
			   (cdr expression)
			   (match (car pattern)
				 (car expression)
				 dictionary)))))

	;骨架和求值
	(define (skeleton-evaluation? skeleton)
	  (if (pair? skeleton)
		  (eq? (car skeleton) ':)
		  false))

	(define (evaluation-expression evaluation) (cadr evaluation))

	(define (instantiate skeleton dictionary)
	  (cond ((null? skeleton) '())
			((atom? skeleton) skeleton)
			((skeleton-evaluation? skeleton)
			 (evaluate (evaluation-expression skeleton)
					   dictionary))
			(else (cons (instantiate (car skeleton) dictionary)
						(instantiate (cdr skeleton) dictionary)))))

	;求值
	(define (evaluate form dictionary)
	  (if (atom? form)
		  (lookup form dictionary)
		  (apply (eval (lookup (car form) dictionary)
					   user-initial-environment)
				 (map (lambda (v) (lookup v dictionary))
					  (cdr form)))))

	;规则
	(define (pattern rule) (car rule))
	(define (skeleton rule) (cadr rule))

	;简化器
	(define (simplifier the-rules)
	  (define (simplify-exp exp)
		(try-rules (if (compound? exp)
					   (simplify-parts exp)
					   exp)))
	  (define (simplify-parts exp)
		(if (null? exp)
			'()
			(cons (simplify-exp (car exp))
				  (simplify-parts (cdr exp)))))
	  (define (try-rules exp)
		(define (scan rules)
		  (if (null? rules)
			  exp
			  (let ((dictionary (match (pattern (car rules))
								  exp
								  (make-empty-dictionary))))
				(if (eq? dictionary 'failed)
					(scan (cdr rules))
					(simplify-exp (instantiate (skeleton (car rules))
									dictionary))))))
		(scan the-rules))
	  simplify-exp)

	; another way to write simplify-exp
	;(define (simplify-exp exp)
	;  (try-rules
	;    (if (compound? exp)
	;      (map simplify-exp exp)
	;      exp)))

	;测试
	'(+ (* (? x) (? y)) (? y))

	'(+ (* 3 x) x)

	(match '(+ (* (? x) (? y)) (? y)) '(+ (* 3 x) x) (make-empty-dictionary))

	(evaluate '(+ x x) '((y x) (x 3)))

	;微分
	(define deriv-rules
	  '(
		( (dd (?c c) (? v))              0                                 )
		( (dd (?v v) (? v))              1                                 )
		( (dd (?v u) (? v))              0                                 )
		( (dd (+ (? x1) (? x2)) (? v))   (+ (dd (: x1) (: v))
											(dd (: x2) (: v)))             )
		( (dd (* (? x1) (? x2)) (? v))   (+ (* (: x1) (dd (: x2) (: v)))
											(* (dd (: x1) (: v)) (: x2)))  )
		( (dd (** (? x) (?c n)) (? v))   (* (* (: n) (+ (: x) (: (- n 1))))
											(dd (: x) (: v)))              )
		))

	(define dsimp (simplifier deriv-rules))

	;测试
	(dsimp '(dd (+ x y) x))

	;线性代数
	(define algebra-rules
	  '(
		( ((? op) (?c c1) (?c c2))                (: (op c1 c2))                )
		( ((? op) (?  e ) (?c c ))                ((: op) (: c) (: e))          )
		( (+ 0 (? e))                             (: e)                         )
		( (* 1 (? e))                             (: e)                         )
		( (* 0 (? e))                             0                             )
		( (* (?c c1) (* (?c c2) (? e )))          (* (: (* c1 c2)) (: e))       )
		( (* (?  e1) (* (?c c ) (? e2)))          (* (: c ) (* (: e1) (: e2)))  )
		( (* (* (? e1) (? e2)) (? e3))            (* (: e1) (* (: e2) (: e3)))  )
		( (+ (?c c1) (+ (?c c2) (? e )))          (+ (: (+ c1 c2)) (: e))       )
		( (+ (?  e1) (+ (?c c ) (? e2)))          (+ (: c ) (+ (: e1) (: e2)))  )
		( (+ (+ (? e1) (? e2)) (? e3))            (+ (: e1) (+ (: e2) (: e3)))  )
		( (+ (* (?c c1) (? e)) (* (?c c2) (? e))) (* (: (+ c1 c2)) (: e))       )
		( (* (? e1) (+ (? e2) (? e3)))            (+ (* (: e1) (: e2))
		))))
	```