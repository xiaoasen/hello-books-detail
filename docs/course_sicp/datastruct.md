---
comments: true
---

# 数据的结构

!!! quote "什么是数据结构？"

	上一节讲了组合和抽象数据的规则和方法，但知道这些，我们还不能说自己已经理解如何那些去编程序。我们现在的情况就像是在学象棋的过程中的一个阶段，此时已经知道了移动棋子的各种规则，但却还不知道典型的布局（数据结构），缺少有关各种棋步的走法（算法）的知识，缺少对所走棋步的各种后果（执行一个过程的时间和空间）做出预期的经验。我们需要有一些有关程序“形状”的直觉，才能写出好的程序，就像一名摄影师，在按下快门之前，大脑里面要有一副大致的画面轮廓，这样才能拍出好的照片。

	“—— 《程序构造与解释》”

常规计算机的存储器可以看作是一串排列整齐的小隔间，每个小隔间里可以保存一点信息。这里的每个小隔间有一个具有唯一性的名字，称为它的地址或者位置。怎么把各种数据的结构“塞”到存储器里面？简单来说，也就是在线性的存储器中怎么表示各种数据的结构

抽象来说，数据的结构是一种逻辑的表示，它可以有很多种。而存储的结构是物理的，它只有两种：连续的（列表）和不连续的（链表），这里讨论的是基于语言的基本结构：如数组（向量），序对（结构体、对象）

!!! quote "细节"

	其实，如果你深究计算机的抽象层次，你会发现无论在具体哪一个层次，在其下都还有若干个你不清楚的抽象层次，但我们必须明白要学会忽略细节，理解复杂事物的关键是：避免不必要的观察、计算和思考

## 数组（向量、列表）

!!! quote "为什么需要向量？"

	常规计算机的存储器可以看作是一串排列整齐的小隔间，每个小隔间里可以保存一点信息。这里的每个小隔间有一个具有唯一性的名字，称为它的地址或者位置。怎么表示某一串排列整齐的小隔房间？使它可以取出保存在一个特定位置的值？另一个能将新的数据赋给指定的位置？比如，怎么表示：h e l l o 这串数据？抽象来看，数据是一种复合数据，由一组连续的数组成, 字符串是固定长度的字符数组

=== "Scheme"
	```
	;用向量构建一串字符串
	(define mString (vector 'h 'e 'l 'l 'o))

	;显示字符串
	(display mString) (newline)

	;获取字符串的长度: 5
	(display (vector-length mString)) (newline)

	;获取字符串中索引(从零开始索引)为4的元素: o 
	(display (vector-ref mString 4)) (newline)

	;将字符串索引为2的元素修改为: y
	(vector-set! mString 2 'y)
	(display mString) (newline)
	```

## 序对（结构体、哈希，对象）

!!! quote "为什么需要序对？"

	用两个整数怎么组合成一个有理数（分数）？比如说整数1和2，怎么组合成下面这种有理数：1/2, 1是分子，2是分母。抽象来看，序对是一种复合数据，由一对数组合而成

=== "Scheme"
	```
	;构造一个有理数
	(define make-rat 
	(lambda (n d)
		(cons n d)))

	;分子
	(define numer 
	(lambda (x)
		(car x)))

	;分母
	(define denom 
	(lambda (x)
		(cdr x)))

	;两个有理数相加
	(define (add-rat x y) 
	(make-rat (+ (* (numer x) (denom y))
				(* (numer y) (denom x)))
				(* (denom x) (denom y))))   

	;打印有理数
	(define (print-rat x) 
	(display (numer x))
	(display "/")
	(display (denom x))
	(newline))

	;测试
	(define x (make-rat 3 4));构造一个有理数：3/4
	(define y (make-rat 2 5));构造一个有理数：2/5
	(print-rat (add-rat x y));打印有理数3/4和2/5相加的结果：23/20
	```

## 链表

!!! quote "为什么需要链表？"

	前面介绍了用数组这种复合数据来表示一串连续的的数据，那要是不连续的呢？比如A、B、C三个人在同一列车厢中，但它们的座位是不连续的

=== "Scheme"
	```
	;; 座位表
	(define seat-list
	  (cons "1A" ; 第一个节点,座位信息和下一个节点的引用
			(cons "6B"  ; 第二个节点,座位信息和下一个节点的引用
				  (cons "13C"  ; 第三个节点,座位信息和下一个节点的引用
						'()))))                   ; 空列表,表示链表的结束

	;; 打印一个座位节点的信息
	(define (print-seat-item item)
	  (display "座位号:")
	  (display item)   ; 座位号是节点的第一个元素
	  (newline))

	;; 打印整个座位链表
	(define (print-seat-list lst)
	  (if (null? lst)                ; 如果链表为空,则递归终止
		  '()
		  ; 如果链表不为空,则打印第一个节点的信息,
		  ; 然后递归调用自身来打印剩余的节点
		  (begin                     
			(print-seat-item (car lst))
			(print-seat-list (cdr lst)))))

	(print-seat-list seat-list)       ; 打印座位链表
	```


## 哈希表

!!! quote "为什么需要哈希表？"

	怎么表示如下的一种菜单？

=== "Scheme"
	```
	;构建菜单
	(define menu (cons (cons '鱼香肉丝 15)
					(cons (cons "宫保鸡丁" 18)
							(cons (cons "糖醋排骨" 22)
								'()))))

	;打印菜单
	(define (print-menu lst)
	(if (null? lst)
		'()
		(begin
			(display (car lst))
			(newline)
			(print-menu (cdr lst)))))

	;测试：
	(print-menu menu)
	```

## 栈

	怎么表示下面的一叠书：满足这样的操作：后进后出
	
=== "Scheme"
	```
	;; 创建一个空的堆栈，堆栈初始时只有一个空列表
	(define (make-stack)
	  (list '()))

	;; 入栈操作，将元素添加到堆栈的顶部
	(define (push stack item)
	  (set-car! stack (cons item (car stack)))) ; 将元素添加到堆栈的顶部

	;; 出栈操作，从堆栈的顶部取出元素并返回，如果堆栈为空则返回空列表
	(define (pop stack)
	  (if (null? (car stack)) ; 如果堆栈为空
		  '() ; 返回空列表
		  (let ((item (car (car stack)))) ; 否则获取堆栈顶部元素
			(set-car! stack (cdr (car stack))) ; 将堆栈顶部元素出栈
			item))) ; 返回堆栈顶部元素的值

	;; 获取堆栈顶部元素，但不出栈，如果堆栈为空则返回空列表
	(define (peek stack)
	  (if (null? (car stack)) ; 如果堆栈为空
		  '() ; 返回空列表
		  (car (car stack)))) ; 否则返回堆栈顶部元素的值

	;; 创建一个空的盘子堆栈
	(define plate-stack (make-stack))

	;; 将盘子添加到盘子堆栈
	(push plate-stack 'plate1) ; 入栈 plate1
	(push plate-stack 'plate2) ; 入栈 plate2
	(push plate-stack 'plate3) ; 入栈 plate3

	;; 取出盘子
	(display "The top plate is ")
	(display (pop plate-stack)) ; 输出 The top plate is plate3
	(newline)

	(display "The top plate is ")
	(display (peek plate-stack)) ; 输出 The top plate is plate2
	(newline)
	```

## 队列
	怎么表示下面排队打饭的场景，满足这样的操作：先进先出
	
=== "Scheme"
	```
	;; 定义 front-ptr 函数，用于返回队列的头部
	(define (front-ptr queue)
	  (car queue))

	;; 定义 rear-ptr 函数，用于返回队列的尾部
	(define (rear-ptr queue)
	  (cdr queue))

	;; 定义 set-front-ptr! 函数，用于设置队列的头部
	(define (set-front-ptr! queue item)
	  (set-car! queue item))

	;; 定义 set-rear-ptr! 函数，用于设置队列的尾部
	(define (set-rear-ptr! queue item)
	  (set-cdr! queue item))

	;; 定义 empty-queue? 函数，用于检查队列是否为空
	(define (empty-queue? queue)
	  (null? (front-ptr queue)))

	;; 定义 make-queue 函数，用于创建一个空队列
	(define (make-queue)
	  (cons '() '()))

	;; 定义 front-queue 函数，用于返回队列的头部元素
	(define (front-queue queue)
	  (if (empty-queue? queue)
		  (error "FRONT called with an empty queue" queue)
		  (car (front-ptr queue))))

	;; 定义 insert-queue! 函数，用于向队列中插入一个元素
	(define (insert-queue! queue item)
	  (let ((new-pair (cons item '())))
		(cond ((empty-queue? queue)
			   (set-front-ptr! queue new-pair)
			   (set-rear-ptr! queue new-pair)
			   queue)
			  (else (set-cdr! (rear-ptr queue) 
							  new-pair)
					(set-rear-ptr! queue new-pair)
					queue))))

	;; 定义 delete-queue! 函数，用于从队列中删除一个元素
	(define (delete-queue! queue)
	  (cond ((empty-queue? queue)
			 (error "DELETE! called with 
					 an empty queue" queue))
			(else (set-front-ptr! 
				   queue 
				   (cdr (front-ptr queue)))
				  queue)))

	;; 创建一个空队列 q1
	(define q1 (make-queue))

	;; 输出空队列 q1 的内容
	(display q1) (newline)

	;; 向队列 q1 中插入元素 'a'
	(insert-queue! q1 'a)

	;; 输出队列 q1 的内容
	(display q1) (newline)

	;; 向队列 q1 中插入元素 'b'
	(insert-queue! q1 'b)

	;; 输出队列 q1 的内容
	(display q1) (newline)

	;; 从队列 q1 中删除一个元素
	(delete-queue! q1)

	;; 输出队列 q1 的内容
	(display q1) (newline)

	;; 从队列 q1 中再次删除一个元素
	(delete-queue! q1)

	;; 输出队列 q1 的内容
	(display q1) (newline)
	```

## 树
	怎么表示下面这种表达式算术？
	
=== "Scheme"
	```
	;; 创建节点,节点包含名字和子节点
	(define (make-node name children)
	  (cons name children))

	;; 获取节点名字
	(define (node-name node)
	  (car node))

	;; 获取节点子节点
	(define (node-children node)
	  (cdr node))

	;; 添加子节点
	(define (add-child node child)
	  (let ((children (node-children node))) ; 获取节点的子节点
		(set-cdr! node (cons child children)))) ; 在子节点列表的头部添加新子节点

	;; 查找节点,如果节点名字与目标名字相同则返回节点,否则递归查找子节点
	(define (find-node node name)
	  (if (eq? (node-name node) name) ; 如果节点名字与目标名字相同
		  node ; 返回该节点
		  (let ((children (node-children node))) ; 否则获取子节点列表
			(let loop ((children children)) ; 递归遍历子节点列表
			  (cond ((null? children) #f) ; 如果子节点列表为空,则返回 #f
					((eq? (node-name (car children)) name) ; 如果子节点的名字与目标名字相同
					 (car children)) ; 返回该子节点
					(else (loop (cdr children)))))))) ; 否则继续递归遍历子节点列表的下一个子节点

	;; 输出家族谱树结构
	(define (print-tree node indent)
	  (display (make-string indent #\space)) ; 打印缩进
	  (display (node-name node)) ; 打印节点名字
	  (newline) ; 换行
	  (let ((children (node-children node))) ; 获取子节点列表
		(let loop ((children children) (indent (+ indent 2))) ; 递归遍历子节点列表
		  (cond ((null? children) #f) ; 如果子节点列表为空,则返回 #f
				(else (print-tree (car children) indent) ; 否则递归打印子节点
					  (loop (cdr children) indent)))))) ; 继续递归遍历子节点列表的下一个子节点

	;; 创建家族谱树结构
	(define ancestor (make-node 'A '()))

	(define child1 (make-node 'B '()))
	(define child2 (make-node 'C '()))
	(define child3 (make-node 'D '()))

	(define grandchild1 (make-node 'E '()))
	(define grandchild2 (make-node 'F '()))
	(define grandchild3 (make-node 'G '()))
	(define grandchild4 (make-node 'H '()))

	(add-child ancestor child1) ; 将子节点 child1 添加到 ancestor 的子节点列表中
	(add-child ancestor child2) ; 将子节点 child2 添加到 ancestor 的子节点列表中
	(add-child ancestor child3) ; 将子节点 child3 添加到 ancestor 的子节点列表中

	(add-child child1 grandchild1) ; 将子节点 grandchild1 添加到 child1 的子节点列表中
	(add-child child1 grandchild2) ; 将子节点 grandchild2 添加到 child1 的子节点列表中
	(add-child child2 grandchild3) ; 将子节点 grandchild3 添加到 child2 的子节点列表中
	(add-child child3 grandchild4) ; 将子节点 grandchild4 添加到 child3 的子节点列表中

	;; 输出家族谱树结构
	(print-tree ancestor 0) ; 从祖先节点开始打印树形结构,缩进为 0
	```

## 图
	怎么表示家族谱？

=== "Scheme"
	```
	;; 定义一个 make-graph 函数,返回一个带有状态的闭包
	(define (make-graph)
	  ;; 定义一个空列表 graph
	  (let ((graph '()))
		;; 定义 add-node! 函数,将一个新的节点添加到图结构中
		(define (add-node! node)
		  (set! graph (cons (cons node '()) graph)))
		
		;; 定义 add-edge! 函数,将两个节点之间添加一条边
		(define (add-edge! node1 node2)
		  ;; 查找 node1 和 node2 所在的位置
		  (let ((node1-pair (assoc node1 graph))
				(node2-pair (assoc node2 graph)))
			;; 如果 node1 和 node2 都存在,并且不是同一个节点
			(if (and node1-pair node2-pair (not (eq? node1 node2)))
			  ;; 则将它们彼此连接,即在它们所在的列表中加上另一个节点
			  (begin (set-cdr! node1-pair (cons node2 (cdr node1-pair)))
					 (set-cdr! node2-pair (cons node1 (cdr node2-pair))))
			  ;; 否则抛出错误,说明其中一个节点不存在或者它们是同一个节点
			  (error "Unknown node"))))
		
		;; 定义 node-neighbor-names 函数,用于查找一个节点的所有邻居节点
		(define (node-neighbor-names node-name)
		  ;; 查找 node-name 所在的位置
		  (let ((node-pair (assoc node-name graph)))
			;; 如果 node-pair 存在,则返回它的邻居节点列表
			(if node-pair
			  (begin
				(display (cdr node-pair))
				(newline))
			  ;; 否则抛出错误,说明该节点不存在
			  (error "Unknown node"))))
		
		;; 定义 dispatch 函数,用于根据传入的消息返回对应的操作函数
		(define (dispatch m)
		  (cond ((eq? m 'get-graph) graph)
				((eq? m 'add-node!) add-node!)
				((eq? m 'add-edge!) add-edge!)
				((eq? m 'node-neighbor-names) node-neighbor-names)))
		
		;; 返回一个闭包,其中包含了 graph 和 dispatch 函数
		dispatch))

	;; 定义 add-node! 函数,将一个新的节点添加到图结构中
	(define (add-node! graph node)
	  ((graph 'add-node!) node))

	;; 定义 add-edge! 函数,将两个节点之间添加一条边
	(define (add-edge! graph node1 node2)
	  ((graph 'add-edge!) node1 node2))

	;; 定义 node-neighbor-names 函数,用于查找一个节点的所有邻居节点
	(define (node-neighbor-names graph name)
	  ((graph 'node-neighbor-names) name))

	;; 定义 get-graph 函数,用于获取整个图结构
	(define (get-graph graph)
	  (graph 'get-graph))

	;; 创建人际关系网络的图结构
	(define g (make-graph))
	(add-node! g 'alice)
	(add-node! g 'bob)
	(add-node! g 'charlie)
	(add-node! g 'david)
	(add-node! g 'emily)

	(add-edge! g 'alice 'bob)
	(add-edge! g 'alice 'charlie)
	(add-edge! g 'bob 'david)
	(add-edge! g 'charlie 'emily)

	;; 查询人际关系网络的图结构
	(node-neighbor-names g 'alice)  ; 输出:(charlie bob)

	(node-neighbor-names g 'bob)    ; 输出:(alice david)

	(node-neighbor-names g 'charlie)  ; 输出:(alice emily)

	(node-neighbor-names g 'david)  ; 输出:(bob)

	(node-neighbor-names g 'emily)  ; 输出:(charlie)

	(node-neighbor-names g 'frank)  ; 输出:ERROR: Unknown node
	```

## 搜索

## 回溯

## 分治

## 动态规划

## 排序