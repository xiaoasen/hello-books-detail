---
comments: true
---

# 高阶过程

## 普通过程

=== "Scheme"
	```
	;(1) 求和一组整数
	(define (sum-int a b)
	  (if (> a b)
		  0
		  (+ a
			 (sum-int (1+ a) b))))
		 
	;(2) 求和A到B的整数的平方
	(define (sum-sq a b)
	  (if (> a b)
		  0
		  (+ (square a)
			 (sum-sq (1+ a) b))))

	;(3) 用莱布尼茨公式求Π/8的值
	(define (pi-sum a b)
	  (if (> a b)
		  0
		  (+ (/ 1.0 (* a (+ a 2)))
			 (pi-sum (+ a 4) b))))	
	
    ; 测试
    (display (sum-int 1 5))
	(newline)

	(display (sum-sq 1 5))
	(newline)

	(display (pi-sum 1 5))
	(newline)
	```

## 高阶过程

=== "Scheme"
	```
	; 公共模式
	(define (sum term a next b)
	  (if (> a b)
		  0
		  (+ (term a)
			 (sum term
				  (next a)
				  next
				  b))))

	;(1) 求和一组整数
	(define (sum-int a b)
	  (define (identity x) x)
	  (define (1+ x) (+ x 1))
	  (sum identity a 1+ b)) 

	;(2) 求和A到B的整数的平方
	(define (sum-sq a b)
	  (define (square x) (* x x))
	  (define (1+ x) (+ x 1))
	  (sum square a 1+ b))
       
	;(3) 用莱布尼茨公式求Π/8的值
	(define (pi-sum a b)
	  (sum (lambda (i) (/ 1.0 (* i (+ i 2))))
		   a
		   (lambda(i) (+ i 4))
		   b))
		   
	; 测试
	(display (sum-int 1 5))
	(newline)

	(display (sum-sq 1 5))
	(newline)

	(display (pi-sum 1 5))
	(newline)
	```
	
## 不动点、平均阻尼求平方根

=== "Scheme"
	```
	; 定义平方根
	(define (sqrt x)
	  (fixed-point
	   (average-damp (lambda (y) (/ x y)))
	   1))

	; 定义不动点   
	(define (fixed-point f start)
	  (define tolerance 0.00001)
	  (define (close-enuf? u v)
		(< (abs (- u v)) tolerance))
	  (define (iter old new)
		(if (close-enuf? old new)
			new
			(iter new (f new))))
	  (iter start (f start)))
	 
	; 定义平均阻尼 
	(define average-damp
	  (lambda (f)
		(define (average x y)
		  (/ (+ x y) 2))
		(lambda (x) (average (f x) x))))

	; 测试
	(display (sqrt 2))
	(newline)  
	```

## 牛顿法求平方根

=== "Scheme"
	```
	; 平方根
	(define (sqrt x)
	  (define (square x) (* x x))
	  (newton (lambda (y) (- x (square y)))
			  1))
	; 牛顿法
	(define (newton f guess)
	  (define df (deriv f))
	  (fixed-point
	   (lambda (x) (- x (/ (f x) (df x))))
	   guess))

	;不动点
	(define (fixed-point f start)
	  (define tolerance 0.00001)
	  (define (close-enuf? u v)
		(< (abs (- u v)) tolerance))
	  (define (iter old new)
		(if (close-enuf? old new)
			new
			(iter new (f new))))
	  (iter start (f start)))

	; 导数
	(define deriv
	  (lambda (f)
		(lambda (x)
		  (/ (- (f (+ x dx))
				(f x))
			 dx))))

	; 一个很小的数
	(define dx 0.000001)

	; 测试
	(display (sqrt 2.0))
	```

!!! 备注
	Heron：连续取均值求平方根法
	```
	; 定义平方根
	(define (sqrt x)
	  (define tolerance 0.00001)
	  (define (good-enuf? y)
		(< (abs (- (* y y) x)) tolerance))
	  (define (improve y)
		(average (/ x y) y))
	  (define (try y)
		(if (good-enuf? y)
			y
			(try (improve y))))
	  (try 1)) 
	 
	; 测试
	(display (sqrt 2))
	(newline)
	```