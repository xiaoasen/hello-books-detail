---
comments: true
---

# 复合数据

## 有理数

什么是有理数？有理数就是一些公理

=== "Scheme"
	```
	;构造有理数
	(define (make-rat n d)
	  (cons n d))
	;分子
	(define (numer x)
	  (car x))
	;分母
	(define (denom x)
	  (cdr x))

	;有理数相加
	(define (+rat x y)
	  (make-rat
	   (+ (* (numer x) (denom y))
		  (* (numer y) (denom x)))
	   (* (denom x) (denom y))))

	;有理数相乘
	(define (*rat x y)
	  (make-rat
	   (* (numer x) (numer y))
	   (* (denom x) (denom y))))

	;打印有理数
	(define (print-rat x) 
	  (display (numer x))
	  (display "/")
	  (display (denom x))
	  (newline))


	;测试
	(define a (make-rat 1 2))
	(define b (make-rat 1 4))
	(define sum (+rat a b))
	(define mul (*rat a b))
	(print-rat sum)
	(print-rat mul)
	```

## 向量

闭包：把哪些当你用它们把东西组合在一起时，你可以继续用同样的方法把组合物继续进行组合。不仅可以由数构成的序对，也可由序对构成的序对。在Fortran中的数组并不具有闭包性质，可以有元素为数的数组，但不能有以数组为元素的数组

向量组合之后还是向量

Let 建立一个局部名字，Define 是建立一个全局名字

=== "Scheme"
	```
	; 构建一个向量
	(define (make-vector x y) (cons x y))
	; 向量的x坐标
	(define (xcor p) (car p))
	; 向量的y坐标
	(define (ycor p) (cdr p))

	; 构建一条线段
	(define (make-seg p q) (cons p q))
	; 线段的起点
	(define (seg-start s) (car s))
	; 线段的终点
	(define (seg-end s) (cdr s))

	; 线段的终点
	(define (midpoint s)
	  (define (average x y) (/ (+ x y) 2))
	  (let ((a (seg-start s))
			(b (seg-end s)))
		(make-vector
		 (average (xcor a) (xcor b))
		 (average (ycor a) (ycor b)))))

	; 线段的长度
	(define (length s)
	  (define (square x) (* x x))
	  (let ((dx (- (xcor (seg-end s))
				   (xcor (seg-start s))))
			(dy (- (ycor (seg-end s))
				   (ycor (seg-start s)))))
		(sqrt (+ (square dx)
				 (square dy)))))

	; 测试
	;起点和终点
	(define startPoint (make-vector 2 3))
	(define endPoint (make-vector 5 11))
	;线段
	(define line (make-seg startPoint endPoint))
	;线段的终点
	(display (midpoint line))
	(newline)
	;线段的长度
	(display (length line))
	(newline)
	```
	
## 凭空创建序对
什么是序对，序对就是满足下述公理的东西：
```
For any x and y

(car (cons x y)) is x

(cdr (cons x y)) is y

```

过程并不仅仅是动作的集合，过程还是概念实体，是对象

=== "Scheme"
	```
	; cons
	(define (my_cons a b)
	  (lambda (pick)
		(cond ((= pick 1) a)
			  ((= pick 2) b))))
	;car
	(define (my_car x) (x 1))
	;cdr
	(define (my_cdr x) (x 2))

	;测试
	(define x (my_cons 5 6))
	(define car_x (my_car x))
	(define cdr_x (my_cdr x))
	(display car_x)
	(newline)
	(display cdr_x)
	(newline)
	```
	
## 列表结构：List

=== "Scheme"
	```
	;list
	(define 1-to-4-cons
	  (cons 1
		  (cons 2
				(cons 3
					  (cons 4 '())))))

	(define 1-to-4 (list 1 2 3 4))


	;缩小表
	(define (scale-list s l)
	  (if (null? l)
		  '()
		  (cons (* (car l) s)
				(scale-list s (cdr l)))))


	;map
	(define (map p l)
	  (if (null? l)
		  '()
		  (cons (p (car l))
				(map p (cdr l)))))


	;foreach
	(define (for-each proc list)
	  (cond ((null? list) " done")
			(else (proc (car list))
				  (for-each proc
							(cdr list)))))

	; 测试
	(display 1-to-4-cons)
	(newline)
	(display 1-to-4)
	(newline)
	(display (car (cdr (cdr 1-to-4))))
	(newline)
	(display (cdr 1-to-4))
	(newline)
	(display (cdr (cdr (cdr (cdr 1-to-4)))))
	(newline)
	(display (scale-list 2 1-to-4))
	(newline)
	(display (map (lambda (x) (+ x 2)) 1-to-4))
	(newline)
	(display (for-each display 1-to-4))
	```