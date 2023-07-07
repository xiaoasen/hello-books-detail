课程名：程序员的自我修养
程序员：念咒语的魔法师

保留字：
一、Scheme
The keywords of MIT Scheme are:

define: define a function or a procedure.
lambda: define a function.
let: define a local variable.
set!: assign a value to a variable.
if: conditional statement.
begin: block statement.
and: logical and operator.
or: logical or operator.
not: logical not operator.


定义和声明的区别：定义是有值，声明是没有值




chatgptw问法：
把下列的代码转化为python代码：
(define factorial
  (lambda (n)
    (if (= n 1)
        1
        (* n (factorial (- n 1))))))

(display (factorial 6))


把下面的代码转化为C#代码
; 基本数据
(display 3) ; 整数: 3
(newline)
(display 7.5) ; 小数: 7.5
(newline)
(display 'A) ;字符: A
(newline)
(display #t) ;布尔值: #t或者#f
(newline)

把下面的代码转化为Python代码,要有注释：



类型推导
The little scheme preface
htdp:Prologue: How to Program
寄存器机器
数据、操作过程
基本数据还有Boolean
类型<a little java>：A type is a name for a collection of values
面向对象《编程的宗派》 https://www.yinwang.org/blog-cn/2015/04/03/paradigms
控制复杂度的技术
数据结构《你好，算法》：乐高积木对应于数据，积木形状和连接方式代表数据结构，拼装积木的步骤则对应算法。
语言特性
复合数据：通过组合出来得到的数据或组合的数据，不是基本数据（整数、浮点数、字符、布尔值），比如构造有理数 4/7 就不是基本数据了。所以它是有理数。又比如说一张图像也是一个复合数据（不过在sicp中的图形语言中会把某一张图像当作基本数据，数字电路里面就把：线、与门、或门、反门当作基本数据）。在函数式编程里，复合数据就是一个函数，在面向对象编程里，复合数据就是一个对象

操作符抽象：比如说 “加号” ：数字相加、字符相加、逻辑门相加等等


Ground-Up Computer Science
一、Functions

1、Console(运行环境)
2、Variable
3、Function
4、Function Call
5、Functions with names
6、The parameter's scope
7、Substitution
8、Function of more than parameter
9、Function as output from another function
10 Function as input for another function
11 Function as input and output
12 Parameter names don't matter
13 Equivalence of x=> e(x) and e
14 Alternative syntax of functions

expression、arithmetic expression、value、evaluation、text、computation graph、input、output、pieces、bits、variable、function、function call(call)、undefined、action、variable 
definition、void、statements、parameter、function body( body)、syntax、operator、operand、substitution、high-order-functions、 "function notation"、 "arrow notation"、

二、Recursion
conditional-branch(branch)、boolean、data-type、number、number-typed、set、clothing、Human、abstract、comparison-expressions、binary-operators、comments、boolean-typed、bugs、absolute-value、modular-design、if-else、factorial、recursion、recursive-call、base-case、recursive-cases、infinite-loops、reduce、linear-recursion、 tree-recursion、loops

1、Boolean and string data types

三、Lists
pair、data-structure、abstract-thinking、interfaces（abstraction-layer）、logic、constructor、type-predicate、visitor、THE-END、list、empty-list、recursive-definition、recursive-data-type、members、same-type-of-input、Pretend-that-the-function-is-already-written、

四、trees
trees、branches、leaves、internal-nodes、 empty-tree、look、subset、custom defined

五、Calculator
computation-graph、 type-tag、evaluate、infix-notations、 operator-precedence、computation-graphs、text-expressions、structural、parser、prefix-notations、interpreters

六、Lookup Tables
lookup-table、key-value、key-value-store、databases、key-value-pair、recursive-data-structure、version-control-system、blockchains、binary-search-tree、compared、comparison-operator、depth、

七、Interpreter
interpreter、language、abstract-syntax-trees、literal-values、growing、environment、undefined-variables、all-possibilities、abstract-interfaces、substitution、free-variable、

1、Datatype Definitions
2、Structure of the interpreter
3、Variables
4、Functions
5、Calls




SICP课程

一、LISP概览
Computer Science
Process: 对进程的形式化表述，平方根例子，平方根的故事
陈述性和指令性知识
Procedure
象棋
运用规则
形式化”怎么做“的指令性知识
控制复杂系统的技术（techniques for controlling the complexity）
理想化组件，与其它工程不同之处
唯一的约束就是对大脑的限制
黑盒抽象Black-box Abstraction 平方根例子
（1）隐藏细节
不动点求平方根，寻求不动点的通法--输入一个过程，输出一个过程
生成过程的过程，生成通法的通法

约定接口(conventional)-->通用记号，广义代数，不同元素进行求和，新类型系统:对象和流

元语言抽象(Metaligustic Abstraction)新语言，强调系统某一部分，隐藏另一部分，自循环，Y运算符、逻辑语言
最重要的不是Lisp本身，而是一种通用的框架体系，用来组织之前提到的语言

; 计算机科学：王垠《数学与编程》

; 数字
3; 数字也是一种抽象，没有特指某个东西，它可以3头🐏，三只🐱，
17.4; 分饼例子

; 组合式
(+ 3 17.4 5)
; 表达式树(抽象语法树，需补充)

;抽象方法, define 给某个东西命名
(define a (* 5 5))
(* a a) ;=>625

(define b (+ a (* 5 a)))

;简单的命名并不是很强大，想定义通用的方法，比如说5*5, 6*6, 1001.7 * 1001.7
;抽象出来，就是(* x x),  给"一个数与其自身相乘"这种想法起一个名字,用数学描述是: f(x) = x * x

(* 5 5)
(* 6 6)
(* 1001.7 1001.7)

;用Lisp语言可以这样表示:square->函数的名字；lambda->构建一个函数; x->函数参数; (* x x)->函数体
(define square
  (lambda (x) (* x x)))
;函数的调用
(square 10); =>100

;语法糖: sugar, lambda由来
;再来两个define的例子

;平均数
(define average
  (lambda (x y)
    (/ (+ x y) 2)))
;两个数平方之后，再平均
(define mean-square
  (lambda (x y)
    (average (square x)
             (square y))))

(mean-square 2 3)

;square当作基本元素去使用，square当作average的参数
;分不清square是内建的还是自定义的，用户使用时无须关心这些
;弹幕：命名空间、包等概念的起源

;分情况分析例子：绝对值，谓词概念：一种返回true或者false的东西
;数学构建图（需要补充）
(define abs
  (lambda (x)
    (cond ((< x 0) (- x))
          ((= x 0) 0)
          ((> x 0) x))))
(abs -7)

(define abs-if
  (lambda (x)
    (if (< x 0)
        (- x)
        x)))

(abs -7)

; 可以把"cond"当作"if"的语法糖

; 来一个下马威，计算平方根
; 数学定义(需要补充)
; 中心思想：尝试将guess作为x的平方根的一个猜想意味着什么？
(define (try guess x)
  (if (good-enough? guess x)
      guess
      (try (improve guess x) x)))
(define (sqrt x) (try 1 x))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x))
     .001))

(sqrt 2.0)

;树形表达式（需要补充）
;递归：用一个东西自己来定义自己
;手动模拟执行，（需要补充）
;递归定义：Recursive Definition,能完成无限次计算

;块结构（Block Structure）：另一种定义平方根，是一个平方根盒子（需要补充）


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

皮亚诺算术 -1+、 1+, java里面是i++, i--

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

![image-20230707114956869](C:\Users\kaisen\AppData\Roaming\Typora\typora-user-images\image-20230707114956869.png)

![image-20230707115136369](C:\Users\kaisen\AppData\Roaming\Typora\typora-user-images\image-20230707115136369.png)

微分方程

![image-20230707115324289](C:\Users\kaisen\AppData\Roaming\Typora\typora-user-images\image-20230707115324289.png)

;画圆，死循环
(define (circle x y)
  (plot x y)
  (circle (- x (* y dt))
          (+ y (* x dt))))



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
time = O(fib(n))
space = O(n)

编程很难，难在编写出通用规则	

8、汉诺塔	 

“想当然”

(define (move n from to spare)
  (cond ((= n 0) "done")
        (else
         (move (-1+ n) from spare to)
         (print-move from to)
         (move (-1+ n) spare to from))))
		 
减少递归代价，把中间值保存下来(动态规划？)，记忆化
	  

三、高阶过程
1、高阶过程
（1）求和一组整数

(define (sum-int a b)
  (if (> a b)
      0
      (+ a
         (sum-int (1+ a) b))))	 

（2）求和A到B的整数的平方
(define (sum-sq a b)
  (if (> a b)
      0
      (+ (square a)
         (sum-sq (1+ a) b))))

（3）用莱布尼茨公式求Π/8的值
(define (pi-sum a b)
  (if (> a b)
      0
      (+ (/ 1 (* a (+ a 2)))
         (pi-sum (+ a 4) b))))	

（4）公共模式(高阶函数)
高阶函数就是以函数为参数或返回值是函数
(define (<name> a b)
  (if (> a b)
	  0
	  (+ (<term> a)
		 (<name> (<next> a) b))))	

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term
              (next a)
              next
              b))))		
a. 求和一组整数
(define (sum-init a b)
  (define (identity x) x)
  (define (1+ x) (+ x 1))
  (sum identity a 1+ b)) 

b. 求和A到B的整数的平方
(define (sum-sq a b)
  (define (square x) (* x x))
  (define (1+ x) (+ x 1))
  (sum square a 1+ b)) 

c. 莱布尼茨公式，用来求Π/8的值
(define (pi-sum a b)
  (sum (lambda (i) (/ 1.0 (* i (+ i 2))))
       a
       (lambda(i) (+ i 4))
       b))
	   
d. 公共模式迭代版本
(define (sum term a next b))

(5)小结：没有公共模式的程序，要是改变“求和”这个方法，就不得不修改这里的每一个程序。	然而要是采用了公共模式来实现的话，那么，“求和”这个方法就被封装在了sum过程里，这个分解允许我只需修改程序的一部分，而不改变用于处理其它问题的那些部分

“过程”并没有什么特殊之处，它也不过是一个变量，会产生一个值。这里其实是定义sum-sq 为一个参数为A、B的lambda过程，所以过程可以被命名，那样的话，过程就可以被作为参数传递于过程之间 

2、不动点 Fixed-Point，过程的返回值也是过程
计算机用于满足人们的需求，而不是人去满足计算机的需求，抽象是为了让程序更易写易读

(1) 平方根

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
不动点就是一个值，将其应用到函数中得到的还是原来的值，你可以通过迭代的方法找到一些函数的不动点 

(2) 不动点版fixed-point 平方根 

(define (sqrt x)
  (fixed-point
   (lambda (y) (average (/ x y) y))
   1))

(define (fixed-point f start)
  (define tolerance 0.00001)
  (define (close-enuf? u v)
    (< (abs (- u v)) tolerance))
  (define (iter old new)
    (if (close-enuf? old new)
        new
        (iter new (f new))))
  (iter start (f start)))  

(3) 平均阻尼方法求平方根
(define (sqrt x)
  (fixed-point
   (average-damp (lambda (y) (/ x y)))
   1))
average-damp是一个过程，其返回值也是一个过程

(define average-damp
  (lambda (f)
    (lambda (x) (average (f x) x))))
	
lambda代表着匿名过程

3、	高阶过程更多的实践，牛顿法求平方根
函数的零点：求y，使得f(y)等于0

to find a y such that
f(y) = 0


函数和过程：函数是一个数学概念，将一个值映射到另一个值，而过程是用来计算函数的。

这种按愿望思维，对于工程来说是很重要，同样，对于计算机科学也是很重要

(define (sqrt x)
  (newton (lambda (y) (- x (square y)))
          1))

(define (newton f guess)
  (define df (deriv f))
  (fixed-point
   (lambda (x) (- x (/ (f x) (df x))))
   guess))

(define deriv
  (lambda (f)
    (lambda (x)
      (/ (- (f (+ x dx))
            (f x))
         dx))))

(define dx 0.000001)

Chris Strachey: 
The rights and privileges of first-class citizens
(1) To be named by variables.
(2) To be passed as arguments to procedures.
(3) To be returned as values of procedures.
(4) To be incorporated into data structures.


四、复合数据
层次系统
接口约定、抽象屏障、胶水复合

1、有理数(新数据类型)
(make-rat n d) --> n/d
(numer nd) -->n
(denom nd) -->d

(define (+rat x y)
  (make-rat
   (+ (* (numer x) (denom y))
      (* (numer y) (denom x)))
   (* (denom x) (denom y))))

(define (*rat x y)
  (make-rat
   (* (numer x) (numer y))
   (* (denom x) (denom y))))

构造函数和选择函数
“内脏”暴露
大脑造成的困惑，要比对编程造成的困惑更严重
编程的本质：我们希望程序设计语言能够表达我们脑中的概念，有理数就是这些概念

2、胶水技术：
表结构 List Structure、序对Pairs、Cons

类比也是人类认知更复杂事物的方法
(1) (cons x y): constructs a pair whose first part is x and whose second part is y.
(2) (car p): selects the first part of the pair p
(3) (cdr p): selects the second part of the pair p


(define (make-rat n d)
  (cons n d))
(define (numer x)
  (car x))
(define (denom x)
  (cdr x))

1/2 + 1/4 = 6/8  
(define a (make-rat 1 2))
(define b (make-rat 1 4))
(define ans (+rat a b))
(numer ans) -->6
(denom ans) -->8  

简化（最大公约数）
(define (make-rat n d)
  (let ((g (gcd n d)))
    (cons (/ n g)
          (/ d g))))
		  
(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))		  
		  
分离策略，数据抽象 Data Abstraction

Let 建立一个局部名字
Define 是建立一个全局名字

3、闭包(Closure) 
(1) 向量
; representing vectors in the plane

(define (make-vector x y) (cons x y))

(define (xcor p) (car p))

(define (ycor p) (cdr p))

; representing line segments
(define (make-seg p q) (cons p q))

(define (seg-start s) (car s))

(define (seg-end s) (cdr s))

; the midpoint of a line segment
(define (midpoint s)
  (let ((a (seg-start s))
        (b (seg-end s)))
    (make-vector
     (average (xcor a) (xcor b))
     (average (ycor a) (ycor b)))))

; The length of the segment

(define (length s)
  (let ((dx (- (xcor (seg-end s))
               (xcor (seg-start s))))
        (dy (- (ycor (seg-end s))
               (ycor (seg-start s)))))
    (sqrt (+ (square dx)
             (square dy)))))

闭包：把哪些当你用它们把东西组合在一起时，你可以继续用同样的方法把组合物继续进行组合。不仅可以由数构成的序对，也可由序对构成的序对。在Fortran中的数组并不具有闭包性质，可以有元素为数的数组，但不能有以数组为元素的数组	 
	 
4、序对的本质

五、Escher的例子
1、闭包、list
(1)序对是具有闭包性质的。闭包性质使我们可以构建更复杂的东西，而不仅仅是简单的序对，Lisp中的数据对象在Cons运算下是封闭的，很多编程语言里面的东西并不是封闭的，Basic和Fortran中的构造数组操作，就不是封闭的，不能创建数组的数组。
(2)表(List)：表本质上就是Lisp用来表示序列数据的一个约定而已，就是一堆序对
(cons 1
      (cons 2
            (cons 3
                  (cons 4 nil))))

(list 1 2 3 4)

(2) 表操作
(define 1-to-4 (list 1 2 3 4))
(car (cdr (cdr 1-to-4)))
1-to-4
(cdr 1-to-4)
(cdr (cdr (cdr (cdr 1-to-4))))

; cdr-ing down a list
(define (scale-list s l)
  (if (null? l)
      nil
      (cons (* (car l) s)
            (scale-list s (cdr l)))))

(define (map p l)
  (if (null? l)
      nil
      (cons (p (car l))
            (map p (cdr l)))))
			
(define (scale-list s l)
  (map (lambda (item) (* item s))
       l))
	   
map思想	

(define (for-each proc list)
  (cond ((null? list) "done")
        (else (proc (car list))
              (for-each proc
                        (cdr list)))))

公共模式：树递归

map和for-each，它们取出的都是列表的元素，这个元素可以是任意，但是不会再对这个元素的内部元素进一步去遍历	

2、Escher实例
这个实例可以充分地总结我们所学的所有东西：表结构(List Structure)、抽象技术(issues of abstraction)、	数据的表示(representation of data)、高阶过程(higher order procedures)、元语言抽象(meta-linguistic abstraction)

一门语言，关心的是：
(1) 基本元素(Primitives)
painter、
(2) 组合方法(Means Of Combination)
Rotate、Beside、Above、
(3) 抽象方式(Means Of Abstraction)				

过程和数据没有本质的区别

组合如此之快，是闭包性质，当将两个图像做Beside操作后，得到的也是图像，可以继续执行Rotate、Flip或者Above操作，而操作的结果也是一个图像，在这种组合方法下，图像的世界是封闭的。

矩形，线性变换

3、语言嵌入，Embedded
好处在于：一旦你按这种方法实现了基本元素，组合的方法就是构造Lisp过程，

图像本质就是一个过程，关键是使用过程来表示图像，使其自动地具有闭包性质。Beside只接受P1,并不关心它是一个基本图像还是一些线段或者Above、beside、Rotate等操作地结果。Beside需要知道的就是给P1传递一个矩形，就会导致某物的绘制。

把图像当作过程，使得组合方法简单而优雅，但这不是点睛之笔，点击之笔来自于这门语言中抽象的方法（己: define、let），把组合的方法实现为了过程，这也意味着当我们对这个语言进行抽象时，Lisp提供的操作过程的一切方法，都可以自动在这个图像语言中使用，与其用术语“这个语言以LIsp实现”，虽然确实如此，我像描述为“这个语言嵌入于Lisp”,可以以扩展的形式，自动地获得Lisp地所有力量。这又是什么意思呢？

(弹幕)：Lisp只是一个实现，所有具备原子、组合、抽象特征的，都可以重现Lisp所作的操作。

通用方法抽象成高阶过程
递归地重复某种组合方法

将工程设计过程看作是创建一门语言，准确地说，是创建各种层次的语言
软件工程：它声称 你要先计算出你的任务，精确且正确地计算出你的任务，一但你搞清楚要做的东西，你把它划分为三个子任务，然后你开始继续做--，你开始处理这个子任务，然后你明确它是什么，这个子问题就分裂成三个子任务，你把它们处理完，然后你先处理这两个任务，解决完子任务后 你后退到这里 处理第二个子任务，然后把它详细地实现出来，结束之后-- 你完成了这个美丽的大厦，你最后得到了一棵非凡的树，你把任务划分为子任务 子任务再划分为子任务，树中的每个结点都被严谨而准确地定义，为奇妙而精美的任务 以构建整栋大厦，这个就是所谓的“神话学”，只有计算机科学家才可能相信你构建的复杂系统像这个样子

图形语言层次

Language Of Schemes Of Combination  -->比如说Push
--------------------------------
Language Of Geometric Positions
----------------------------
Language Of Primitive Picts

真正的设计过程，与其说在设计程序，不如说在设计语言

六、求导程序
为了让系统具有健壮性，应该让它对小变化不敏感，也就是说问题中的小改变只会导致解决方案的小改动，系统应该是连续的，在问题空间中，解的空间是连续的。与其在问题分解出的子问题上求解具体问题，你不如解决一类问题，也就是你想要解决的具体问题的“邻居”，解决之道便是在该层次上构造一门语言，使得我们可以用这门语言来表述这类问题。因此，当着手解决的问题再发生变动时，通常，你只需要在已构造好的解决方案上做出微小的改动，因为在你所考虑的层次上，有一门语言类似问题的各种解法

1、引号，字符串

为什么求导容易，就积分就困难了呢？因为对于每条法则来说，你求导数时的方向：法则的左边与你的表达式相匹配，法则的右边就是表达式的导数，法则右边的表达式，都是求导过程中的子表达式，都是左边式子的合法子表达式，这里，我们发现“和”的导数，也就是左边式子的导数，就是两部分导数之和，法则从左到右的方向是“归约规则”，问题变简单了，把一个复杂的问题，转化成了许多小点的问题，然后把结果组合起来，这里用递归可以完美的解决。但如果从另外的方向来思考，如果想求积分的话，你会发现有很多问题，比如说，求一个“和”的积分，就会匹配多条法则，这条要匹配，这一条也要匹配，不知道该用哪个，它们之间可能不一样，得考察两者得不同之处，所以在这个方向上表达式变复杂了，当表达式变复杂时，就没法保证我所选得路径一定能终止了，因为唯一得可能是偶然的约分，这也就是为什么积分是一种复杂的搜索而难以完成。

归约原则

“双关”思想：


2、测试

七、模式匹配
按类型分配
1、模式(Pattern)、规则(Rule)、骨架(Skeleton)
Pattern匹配(Match)原表达式(Expression Source),应用规则(Rule),产生新的表达式(Expression Target),通过骨架(Skeleton)实例化(Instantiation)

2、实现模式匹配
所谓的“人工智能专家系统”

八、通用运算符
1、复数
同一操作，不同的实现方法
公式翻译成代码
带类型数据：Typed Data

2、新的数据类型加入
基于类型的分派(Dispatch on type)
缺点：需要修改它们的过程的名字，
命名空间

put和get
operate

数据导向编程(data-directed programming):数据对象自身就携带着关于怎么去操作它们的信息。

通用运算符


八、赋值、状态和副作用

1、set! 操作
语言新特性
函数式编程：是一种对数学事实的编码，描述一个特定的函数的计算

函数式(functional)：同样的表达式，输出永远相同；如fib(4)
赋值：同样的表达式，时间点不同，输出的结果可能不同。如：(demo 3)
代换模型失效，代换模型是一个静态的现象，它描述的事实，而不是变动
命令式（imperative）
缺点：调换顺序可能导致错误。

set!、define、let的区别
define 用于创建并初始化，为了创建它，不能同一变量写两个define只是为了让某个变量的旧值变成一个新的值。在那个创建时间点后，它的值是永远不变的。 

let 只会绑定一次，它绑定了上下文，上下文存在于其作用域内。不会进行改变。转为lambda就容易理解了

define就是一个语法糖，本质上来说，是通过let创建一系列变量，然后给它们一次性赋值。

2、环境模型(Environment Model)
约束变量(Bound Variables)
模块化
未被约束变量(Free Variables)
作用域

Lambda 唯一能创建名字的东西是Lambda

3、对象
什么是对象？

九、计算对象
1、面向对象
初衷：模块性
数字电路
DSL
对象之间通信
事件驱动

2、优先队列

3、序列“身份”、丘奇

十、流
1、流引出
Assignment and State
变量与名字
Change
Time
Identity
Object
Share
Modularity
Stream Processive
Streams

程序：sum-odd-squares、odd-fibs

(cons-stream)
(head s)
(tail s)

程序：the-empty-stream、map-stream、filter、accumulate、enumerate-tree、append-stream、enum-interval

己：基本元素-->流

Conventional Interfaces

生成-测试(Generate-Test)

2、流中有流，流生流
Flatten、Flatmap
Collection
八皇后
回溯搜索(Backtracking Search)

3、惰性求值 (delay)
流不是表

4、"按需"计算

5、无穷流，延迟求值

6、正则序和应用序求值
Normal-order evaluation Vs Applicative-Order
正则序：拖尾问题

函数式和命令式

十一、元循环求值器

1、机器描述
通用机器
保留字

2、测试 eval-apply
手动替换

3不动点/Y算子，lambda演算


#lang racket
(require racket/gui)
(require racket/draw)

(define (draw-line canvas dc)
  (send dc set-pen "black" 1 'solid)
  (send dc draw-line 10 10 100 100))

(define frame (new frame%
                   [label "Draw a Line Example"]
                   [width 300]
                   [height 300]))

(define canvas (new canvas%
                     [parent frame]
                     [paint-callback draw-line]))

(send frame show #t)

===============
#lang racket
(require racket/gui)
(require racket/draw)

(define (make-segment x1 y1 x2 y2)
  (list (cons x1 y1) (cons x2 y2)))

(define (segment-start segment)
  (car segment))

(define (segment-end segment)
  (cadr segment))


(define segments (list (make-segment 0 0 100 100)
                       (make-segment 100 100 150 50)))

(define (segments->painter segments)
  (define (draw-segments painter dc)
    (for-each (lambda (segment)
                (let ((start (segment-start segment))
                      (end (segment-end segment)))
                  (send dc set-pen "black" 1 'solid)
                  (send dc draw-line
                        (car start) (cdr start)
                        (car end) (cdr end))))
              segments))
  draw-segments)

(define frame (new frame%
                   [label "Segments to Painter Example"]
                   [width 300]
                   [height 300]))

(define canvas (new canvas%
                     [parent frame]
                     [paint-callback (segments->painter segments)]))

(send frame show #t)

=================
#include <SDL2/SDL.h>

void drawEscher(SDL_Renderer* renderer, int x, int y, int w, int h, int depth) {
    if (depth <= 0) {
        return;
    }

    // 绘制一个小的Escher图形
    SDL_Rect rect = {x, y, w, h};
    SDL_RenderDrawRect(renderer, &rect);

    // 递归绘制四个更小的Escher图形
    drawEscher(renderer, x, y, w/2, h/2, depth - 1);
    drawEscher(renderer, x + w/2, y + h/2, w/2, h/2, depth - 1);
    drawEscher(renderer, x + w/2, y - h/2, w/2, h/2, depth - 1);
    drawEscher(renderer, x, y, w/2, -h/2, depth - 1);
}

int main(int argc, char* argv[]) {
    // 初始化SDL2库
    SDL_Init(SDL_INIT_VIDEO);

    // 创建窗口
    SDL_Window* window = SDL_CreateWindow("Escher", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, 500, 500, SDL_WINDOW_SHOWN);

    // 创建渲染器
    SDL_Renderer* renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED);

    // 设置渲染颜色为黑色
    SDL_SetRenderDrawColor(renderer, 255, 0, 0, 255);

    // 绘制一个初始的大的Escher图形
    drawEscher(renderer, 50, 50, 400, 400, 4);

    // 刷新渲染器
    SDL_RenderPresent(renderer);

    // 等待用户关闭窗口
    SDL_Event event;
    while (SDL_WaitEvent(&event)) {
        if (event.type == SDL_QUIT) {
            break;
        }
    }

    // 销毁渲染器和窗口
    SDL_DestroyRenderer(renderer);
    SDL_DestroyWindow(window);

    // 退出SDL2库
    SDL_Quit();

    return 0;
}

