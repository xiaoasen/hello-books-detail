---
comments: true
---

# 通用运算

=== "Racket"
	```
	#lang racket

	;;; 复数运算 ;;;
	;              +c   -c   *c   /c
	;------------------------------------------------
	;   real-part   imag-part   magnitude    angle
	;------------------------------------------------
	;                      |
	;    rectangular       |         polar
	;                      |


	(require r5rs)


	;;; put和get
	(define (make-table)
	  (let ((local-table (list '*table*)))

		(define (lookup key-1 key-2)
		  (let ((subtable (assoc key-1 (cdr local-table))))
			(if subtable
				(let ((record (assoc key-2 (cdr subtable))))
				  (if record
					  (cdr record)
					  false))
				false)))

		(define (insert! key-1 key-2 value)
		  (let ((subtable (assoc key-1 (cdr local-table))))
			(if subtable
				(let ((record (assoc key-2 (cdr subtable))))
				  (if record
					  (set-cdr! record value)
					  (set-cdr! subtable
								(cons (cons key-2 value)
									  (cdr subtable)))))
				(set-cdr! local-table
						  (cons (list key-1
									  (cons key-2 value))
								(cdr local-table)))))
		  'ok)

		(define (dispatch m)
		  (cond ((eq? m 'lookup-proc) lookup)
				((eq? m 'insert-proc!) insert!)
				(else (error "Unknown operation -- TABLE" m))))
		dispatch))

	(define operation-table (make-table))
	(define get (operation-table 'lookup-proc))
	(define put (operation-table 'insert-proc!))

	;平方
	(define (square x) (* x x))

	;复数加法
	(define (+c z1 z2)
	  (make-rectangular
	   (+ (real-part z1) (real-part z2))
	   (+ (imag-part z1) (imag-part z2))))

	;复数减法
	(define (-c z1 z2)
	  (make-rectangular
	   (- (real-part z1) (real-part z2))
	   (- (imag-part z1) (imag-part z2))))

	;复数乘法
	(define (*c z1 z2)
	  (make-polar
	   (* (magnitude z1) (magnitude z2))
	   (+ (angle z1) (angle z2))))

	;复数除法
	(define (/c z1 z2)
	  (make-polar
	   (/ (magnitude z1) (magnitude z2))
	   (- (angle z1) (angle z2))))

	;;;构造复数
	;采用序对：(实部 . 虚部)
	;(define (make-rectangular x y)
	;  (cons x y))
	;采用模和辐角的方式
	;(define (make-polar r a)
	;  (cons (* r (cos a))
	;        (* r (sin a))))
	;实部
	;(define (real-part z)
	;  (car z))
	;虚部
	;(define (imag-part z)
	;  (cdr z))

	;模
	;(define (magnitude z)
	;  (sqrt (+ (square (car z))
	;           (square (cdr z)))))
	;角
	;(define (angle z)
	;  (atan (cdr z)
	;        (car z)))

	;采用序对: (模 . 辐角)
	;(define (make-polar r a) (cons r a))
	;模
	;(define (magnitude z) (car z))
	;角
	;(define (angle z) (cdr z))

	;采用实部和虚部的方式
	;(define (make-rectangular x y)
	;  (cons (sqrt (+ (square x) (square y)))
	;        (atan y x)))
	;实部
	;(define (real-part z)
	;  (* (car z) (cos (cdr z))))

	;虚部
	;(define (imag-part z)
	;  (* (car z) (sin (cdr z))))

	;;;带类型数据：typed data

	;构造类型数据
	(define (attach-type type contents)
	  (cons type contents))
	;类型
	(define (type datum)
	  (car datum))
	;数据
	(define (contents datum)
	  (cdr datum))

	;;;类型判断

	;是直角坐标类型吗?
	(define (rectangular? z)
	  (eq? (type z) 'rectangular))

	;是直坐标类型吗?
	(define (polar? z)
	  (eq? (type z) 'polar))

	;;;直角坐标包
	(define (make-rectangular x y)
	  (attach-type 'rectangular (cons x y)))

	(define (real-part-rectangular z)
	  (car z))

	(define (imag-part-rectangular z)
	  (cdr z))

	(define (magnitude-rectangular z)
	  (sqrt (+ (square (car z))
			   (square (cdr z)))))

	(define (angle-rectangular z)
	  (atan (cdr z) (car z)))

	;;;极坐标包

	(define (make-polar r a)
	  (attach-type 'polar (cons r a)))

	(define (real-part-polar z)
	  (* (car z) (cos (cdr z))))

	(define (imag-part-polar z)
	  (* (car z) (sin (cdr z))))

	(define (magnitude-polar z) (car z))

	(define (angle-polar z) (cdr z))

	;;;通用的选择函数
	;(define (real-part z)
	;  (cond ((rectangular? z)
	;         (real-part-rectangular (contents z)))
	;        ((polar? z)
	;         (real-part-polar (contents z)))
	;        (else (error "Unknown type: REAL-PART" z))))
	;
	;(define (img-part z)
	;  (cond ((rectangular? z)
	;         (imag-part-rectangular (contents z)))
	;        ((polar? z)
	;         (imag-part-polar (contents z)))
	;        (else (error "Unknown type: IMAG-PART" z))))
	;
	;(define (magnitude z)
	;  (cond ((rectangular? z)
	;         (magnitude-rectangular (contents z)))
	;        ((polar? z)
	;         (magnitude-polar (contents z)))
	;        (else (error "Unknown type: MAGNITUDE" z))))
	;
	;(define (angle z)
	;  (cond ((rectangular? z)
	;         (angle-rectangular (contents z)))
	;        ((polar? z)
	;         (angle-polar (contents z)))
	;        (else (error "Unknown type: ANGLE" z))))
	;
	;;; 把直角坐标包安装到表格中某一列
	(put 'rectangular 'real-part real-part-rectangular)
	(put 'rectangular 'imag-part imag-part-rectangular)
	(put 'rectangular 'magnitude magnitude-rectangular)
	(put 'rectangular 'angle angle-rectangular)

	;;; 把极坐标包安装到表格中某一列
	(put 'polar 'real-part real-part-polar)
	(put 'polar 'imag-part imag-part-polar)
	(put 'polar 'magnitude magnitude-polar)
	(put 'polar 'angle angle-polar)

	;;; operate操作
	(define (operate op obj)
	  (let ((proc (get (type obj) op)))
		(if (not (null? proc))
			(proc (contents obj))
			(error "undefined operator"))))

	(define (real-part obj)
	  (operate 'real-part obj))

	(define (imag-part obj)
	  (operate 'imag-part obj))

	(define (magnitude obj)
	  (operate 'magnitude obj))

	(define (angle obj)
	  (operate 'angle obj))

	;;;数据导向编程：数据本身携带着相关操作信息

	;是否是原子?
	(define (atom? x)
	  (and (not (pair? x))
		   (not (null? x))))

	(define (same-var? exp var)
	  (and (atom? exp)
		   (eq? exp var)))

	(define (var p) (car p))

	(define (term-list p) (cdr p))

	(define (empty-termlist? term-list) (null? term-list))

	(define (first-term term-list) (car term-list))

	(define (order term) (car term))

	(define (coeff term) (cadr term))

	(define (adjoin-term term term-list)
	  (if (=zero? (coeff term))                ;slight simplification
		  term-list
		  (cons term term-list)))

	(define (=zero? x) (apply-generic '=zero? x))

	(define (rest-terms term-list) (cdr term-list))

	(define (apply-generic op . args)
	  (let ((type-tags (map type args)))
		(let ((proc (get op type-tags)))
		  (if proc
			  (apply proc (map contents args))
			  (error
				"No method for these types: 
				 APPLY-GENERIC"
				(list op type-tags))))))

	(define (make-term order coeff) (list order coeff))


	; 通用add
	(define (add x y)
	  (operate-2 'add x y))

	(define (operate-2 op arg1 arg2)
	  (if (eq? (type arg1) (type arg2))
		(let ((proc (get (type arg1) op)))
		  (if (not (null? proc))
			(proc (contents arg1) (contents arg2))
			(error "Op undefined on type")
		  ))
	   (error "Arg not same type")))

	;多项式
	(define (make-polynomial var term-list)
	  (attach-type 'polynomlial (cons var term-list)))

	(define (+poly p1 p2)
	  (if (same-var? (var p1) (var p2))
		  (make-polynomial (var p1)
						   (+terms (term-list p1)
								   (term-list p2)))
		  (error 'polynomial 'add +poly)))

	(define (+terms L1 L2)
	  (cond ((empty-termlist? L1) L2)
			((empty-termlist? L2) L1)
			(else
				(let ((t1 (first-term L1))
					  (t2 (first-term L2)))
				  (cond
					((> (order t1) (order t2))
					  (adjoin-term
						t1
						(+terms (rest-terms L1) L2)))
					((< (order t1) (order t2))
					   (adjoin-term
						t2
						(+terms L1 (rest-terms L2))))
					(else
					  (adjoin-term
						(make-term (order t1)
								   (add (coeff t1)
										(coeff t2)))
						(+terms (rest-terms L1)
								(rest-terms L2)))))))))

	```