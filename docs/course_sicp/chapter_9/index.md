---
comments: true
---

# 赋值运算

=== "Scheme"
	```
	#lang racket


	(define count 1)
	(define (demo x)
	  (set! count (+ 1 count))
	  (+ x count))

	;测试
	(demo 3) ;=> 5
	(demo 3) ;=> 6

	;阶乘 Functional version
	(define (fact-functional n)
	  (define (iter m i)
		(cond ((> i n) m)
			  (else (iter (* i m) (+ i 1)))))
	  (iter 1 1))
	;阶乘 Imperative version
	(define (fact-imperative n)
	  (let ((i 1) (m 1))
		(define (loop)
		  (cond ((> i n) m)
				(else
				 (set! m (* i m))
				 (set! i (+ i 1))
				 (loop))))
		(loop)))


	;测试

	(fact-functional 5)
	(fact-imperative 5)

	;什么是对象？
	(define make-counter
	  (lambda (n)
		(lambda ()
		  (set! n (+ n 1))
		  n)))

	(define c1 (make-counter 0))
	(define c2 (make-counter 10))

	(c1) ;=>1
	(c2) ;=>11
	(c1) ;=>2
	(c2) ;=>12

	;谨慎使用赋值，能获得模块性


	(define (estimate-pi n)
	  (sqrt (/ 6 (monte-carlo n cesaro))))

	; 第一种方法:命令式(rand) 和 (rand)是不同的两个函数
	(define (cesaro)
	  (= (gcd (rand) (rand)) 1))

	(define random-init 7)

	(define (rand-update x)
	  (let ((a 27) (b 26) (m 127))
		(modulo (+ (* a x) b) m)))

	(define rand
	  (let ((x random-init))
		(lambda ()
		  (set! x (rand-update x))
		  x)))

	(define (monte-carlo trials experiment)
	  (define (iter remaining passed)
		(cond ((= remaining 0))
			  (/ passed trials)
			  ((experiment) (iter (- remaining 1) (+ passed 1)))
			  (else
			   (iter (- remaining 1) passed))))
	  (iter trials 0))

	;; 第二种方法：没有赋值
	(define (estimate-pi2 trials)
	  (sqrt (/ 6 (random-gcd-test trials random-init))))

	(define (random-gcd-test trials initial-x)
	  (define (iter trials-remaining trials-passed x)
		(let ((x1 (rand-update x)))
		  (let ((x2 (rand-update x1)))
			(cond ((= trials-remaining 0)   
				   (/ trials-passed trials))
				  ((= (gcd x1 x2) 1)
				   (iter (- trials-remaining 1)
						 (+ trials-passed 1)
						 x2))
				  (else
				   (iter (- trials-remaining 1)
						 trials-passed
						 x2))))))
	  (iter trials 0 initial-x))
	```