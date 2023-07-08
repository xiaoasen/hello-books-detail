---
comments: true
---

# 求导程序

=== "Scheme"
	```
	#lang racket
	;导数
	(define (deriv exp var)
	  (cond ((number? exp) 0)
			((variable? exp)
			 (if (same-variable? exp var) 1 0))
			((sum? exp)
			 (make-sum (deriv (addend exp) var)
					   (deriv (augend exp) var)))
			((product? exp)
			 (make-sum
			  (make-product (multiplier exp)
							(deriv (multiplicand exp) var))
			  (make-product (deriv (multiplier exp) var)
							(multiplicand exp))))
			(else
			 (error "unknown expresssion type -- deriv" exp))))
	;是否是变量?
	(define (variable? x) (symbol? x))
	;是否是同一个变量
	(define (same-variable? v1 v2)
	  (and (variable? v1) (variable? v2) (eq? v1 v2)))
	;构造"和"
	;(define (make-sum a1 a2) (list '+ a1 a2))
	(define (make-sum a1 a2)
	  (cond ((and (number? a1) (number? a2))
			 (+ a1 a2))
			((and (number? a1) (= a1 0))
			  a2)
			((and (number? a2) (= a2 0))
			  a1)
			(else (list '+ a1 a2))))

	;构造"积"
	;(define (make-product m1 m2) (list '* m1 m2))
	(define (make-product m1 m2)
	  (cond ((and (number? m1) (number? m2))
			 (* m1 m2))
			((and (number? m1) (= m1 0))
			 0)
			((and (number? m2) (= m2 0))
			 0)
			((and (number? m1) (= m1 1))
			  m2)
			((and (number? m2) (= m2 1))
			  m1)
			(else (list '* m1 m2))))
	;是否是"和"?
	(define (sum? x)
	  (and (pair? x) (eq? (car x) '+)))
	;加数
	(define (addend s) (cadr s))
	;被加数
	(define (augend s) (caddr s))
	;是否是"积"?
	(define (product? x)
	  (and (pair? x) (eq? (car x) '*)))
	;乘数
	(define (multiplier p) (cadr p))
	;被乘数
	(define (multiplicand p) (caddr p))

	;测试
	;(deriv '3 'x)
	;(deriv 'x 'x)
	;(deriv 'x 'y)
	;(deriv '(+ x 3) 'x)
	;(deriv '(+ x 3) 'y)
	;(deriv '(* x 3) 'x)
	;(deriv '(* x 3) 'y)

	(define foo
	  '(+ (* a (* x x))
		 (* b x)
		 c))
	(deriv foo 'x)
	```