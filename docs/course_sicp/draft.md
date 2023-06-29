二、计算过程
1、计算两个数平方和

(define (sos x y)
  (+ (sq x) (sq y)))

(define (sq x)
  (* x x))

(sos 3 4)

2、程序执行以及它的控制方法，过程行为，模型

模型与计算机的实现无关，比如说一个电阻V=IR,
(1) 代换模型：

3、表达式的类型(Kinds Of Expression)
(1)Numbers
(2)Symbols
(3)Lambda Expressions
(4)Definitions
(5)Conditionals
(6)Combinations

(3)(4)(5)是特殊的形式，有一些专门的规则
数字的求值结果就是这个数字所代表的数值
符号的概念将不会出现在代换模型中
本节主要是讨论如何对组合式求值	

4、对一个表达式求值(Combinations)的规则
To evaluate an application
(1) Evaluate the operator to get procedure
(2) Evaluate the operands to get arguments
(3) Apply the procedure to the arguments
	Copy the body of the procedure.
		substituting the arguments supplied for the formal parameters of the procedure
	Evaluate the resulting new body
	

	
(sos 3 4)
(+ (sq 3) (sq 4))
(+ (sq 3) (* 4 4))
(+ (sq 3) 16)
(+ (* 3 3) 16)
(+ 9 16)
25


注意：+ - * / 先看作基本过程处理，不进入深究 其实，如果你深究计算机的抽象层次，你会发现无论在具体哪一个层次，在其下都还有若干个你不清楚的抽象层次，但我们必须明白要学会忽略细节，理解复杂事物的关键是：避免不必要的观察、计算和思考

代换模型并不能准确描述计算机实际的运行方式，

求值顺序

5、条件表达式（Conditionals）
To evaluate an IF expression
(1) Evaluate the predicate expression
	if it yields TRUE
		evaluate the consequent expression
	otherwise
		evaluate the alternative expression
		
(IF <predicate>
	<consequent>
	<alternative>)

知道事物各部分的名称或者表达式各部分的名称很重要，每个“魔法师”都会告诉你，如果你能叫出一个“精灵”的名字，你就有控制它的能力，所以你得知道这些名字，以便之后的讨论

皮诺数-1+、 1+, java里面是i++, i--

(define (+ x y)
  (if (= x 0)
      y
      (+ (-1+ x) (1+ y))))

(+ 3 4)
(if (= 3 0) 4 (+ (-1+ 3) (1+ 4)))
(+ (-1+ 3) (1+ 4))
(+ (-1+ 3) 5)
(+ 2 5)
(if (= 2 0) 5 (+ (-1+ 2) (1+ 5)))
(+ (-1+ 2) (1+ 5))
(+ (-1+ 2) 6)
(+ 1 6)
(if (= 1 0) 6 (+ (-1+ 1) (1+ 6)))
(+ (-1+ 1) (1+ 6))
(+ (-1+ 1) 7)
(+ 0 7)
(if (= 0 0) 7 (+ (-1+ 0) (1+ 7)))
7

6、程序的形状
Peano Arithmetic

Two ways to add whole numbers:

(1) Iteration
(define (+ x y)
  (if (= x 0)
      y
      (+ (-1+ x) (1+ y))))

(+ 3 4)
(+ 2 5)
(+ 1 6)	  
(+ 0 7)
7

time = O(x)
space = O(1)	  

(2) Linear Recursion
(define (+ x y)
  (if (= x 0)
      y
      (1+ (+ (-1+ x) y))))
	    
(3 4)
(1+ (+ 2 4))
(1+ (1+ (+ 1 4)))
(1+ (1+ (1+ (+ 0 4))))	
(1+ (1+ (1+ 4)))
(1+ (1+ 5))
(1+ 6)
7 

time = O(x)
space = O(x) 

任何计算机，都应该在常数空间复杂度内完成计算过程。可能还有别的模型可以用来描述迭代和递归计算过程的不同之处，但这有些困难，这两种计算过程都是递归定义的，也就是两个过程的定义中都引用了该过程本身，但是它们却产生了不同“形状”的计算过程

微分方程

7、斐波那契数列
一个程序如何在计算过程的求值中表现出自己的相应规则
0 1 2 3 4 5 6 7 8 9 10 11 ...

0 1 1 2 3 5 8 13 21 34 55 ...

计算第n个斐波那契数

(define (fib n)
  (if (< n 2)
      n
      (+ (fib (- n 1))
         (fib (- n 2)))))
		 
用一棵树表示		 
		 
	  

	

