---
comments: true
---

# 计算机的本质

当你是一个小孩时，有时父母会考考你的算术，比如说他们问你：1 + 1 等于多少？你掰着你的手指算出了:2

<div id="Fig1.1" markdown>
<figure markdown>
  ![](../assets/Fig1.1.png)
  <figcaption markdown>
  考一考你
  </figcaption>
</figure>
</div>

他们“抛出”一条 **表达式**—— **1 + 1**，然后你来 **计算** 出这条 **表达式** 的 **值**—— **2**。现在交换一下角色，用电脑的浏览器打开一个在线开发集成环境(IDE: Integrated Development Environment)，比如 [Jdoodle](https://www.jdoodle.com/)，选择 `NodeJs`，然后在打开页面的编辑框里写入 `console.log(1 + 1);`,再点击`Execute`,下面的黑色框里就会出现结果`2`：

<div id="Fig1.3" markdown>
<figure markdown>
  ![](../assets/Fig1.3.jpg)
  <figcaption markdown>
  在线编译器和编辑器
  </figcaption>
</figure>
</div>

<div id="Fig1.4" markdown>
<figure markdown>
  ![](../assets/Fig1.4.jpg)
  <figcaption markdown>
  在线NodeJs开发集成环境
  </figcaption>
</figure>
</div>


在这里，你变成了你父母的角色，也就是“抛出” **表达式**，而这个在线IDE变成你原来的角色：**计算** 出 **表达式** 的值。由此可见，**计算机** 顾名思义是一种 **计算** 工具。

<div id="Fig1.2" markdown>
<figure markdown>
  ![](../assets/Fig1.2.png)
  <figcaption markdown>
  一名程序员
  </figcaption>
</figure>
</div>

计算机可以很快地计算出`1+1`的值，它还能计算复杂的东西，比如：计算 **最大公约数** (GCD: Greatest Common Divisor)。**最大公约数** 在数学中是这样定义的：

```
两个整数a和b的最大公约数(GCD)除尽这两个数的那个最大的整数
```


这个定义只告诉你 **最大公约数** 是什么，却没有告诉你如何去求取一个 **最大公约数**。那么如何求一个 **最大公约数** 呢？大约公元前300年欧几里得提出了一个 **欧几里得算法**：

要表达上面的 **欧几里得算法**，有三个明显的选择：

- 自然语言，例如：中文。自然语言是模糊两可的，不精确的，有时笨拙且冗长。

```
如果r是a除以b的余数，那么a和b的公约数正好也是b和r的公约数，也就是下面这个等式：

GCD(a, b) = GCD(b, r)

这样就把GCD的计算问题连续归约到越来越小的整数对的GCD计算问题。例如：

GCD(206,40) = GCD(40,6)
            = GCD(6,4)
            = GCD(4,2)
            = GCD(2,0) = 2

将GCD(206, 40)归约到GCD(2, 0), 最终得到2
```

- 数学语言，跟自然语言刚好相反：它能用很少的几个符号来表达形式化的思想，但是数学语言往往是神秘高深的，如果没有特殊的训练，就几乎无法理解。

```
GCD(206,40) = GCD(40,6)
            = GCD(6,4)
            = GCD(4,2)
            = GCD(2,0) = 2
```

- 图形语言。直观，便于理解，但是其占用的空间大，且很难描述复杂的东西。

![](../assets/Fig1.5.svg)


有没有一种语言能同时克服上面两种语言的缺点来表达 **欧几里得算法** ？下面来看一下这种表达式子：

=== "Scheme"
	```
	(define (gcd a b)
	  (if (= b 0)
		  a
		  (gcd b (remainder a b))))
	  
	(display (gcd 206 40)) 
	```

=== "Python"
	```
	def gcd(a, b):
		if b == 0:
			return a
		else:
			return gcd(b, a % b)
			
	print(gcd(206, 40))
	```    
	
=== "C"
	```
	#include <stdio.h>

	int gcd(int a, int b) {
		if (b == 0) {
			return a;
		} else {
			return gcd(b, a % b);
		}
	}

	int main() {
		printf("%d\n", gcd(206, 40));  // 应该输出 2
		return 0;
	}
	```
	
=== "C++"
	```
	#include <iostream>

	int gcd(int a, int b) {
		if (b == 0) {
			return a;
		} else {
			return gcd(b, a % b);
		}
	}

	int main() {
		std::cout << gcd(206, 40) << std::endl;  // 应该输出 2
		return 0;
	}
	```	
	
=== "Java"
	```
	public class GCD {
		public static int gcd(int a, int b) {
			if (b == 0) {
				return a;
			} else {
				return gcd(b, a % b);
			}
		}

		public static void main(String[] args) {
			System.out.println(gcd(206, 40));  // 应该输出 2
		}
	}
	```

=== "C#"
	```
	using System;

	class GCD {
		static int gcd(int a, int b) {
			if (b == 0) {
				return a;
			} else {
				return gcd(b, a % b);
			}
		}

		static void Main(string[] args) {
			Console.WriteLine(gcd(206, 40));  // 应该输出 2
		}
	}	
	```	
	
=== "PHP"
	```
	<?php
	function gcd($a, $b) {
		if ($b == 0) {
			return $a;
		} else {
			return gcd($b, $a % $b);
		}
	}

	echo gcd(206, 40);  // 应该输出 2
	?>	
	```	

=== "JavaScript"
	```
	function gcd(a, b) {
		if (b === 0) {
			return a;
		} else {
			return gcd(b, a % b);
		}
	}

	console.log(gcd(206, 40));  // 应该输出 2
	```
	
=== "Go"
	```
	package main

	import "fmt"

	func gcd(a, b int) int {
		if b == 0 {
			return a
		} else {
			return gcd(b, a%b)
		}
	}

	func main() {
		fmt.Println(gcd(206, 40))  // 应该输出 2
	}
	```

=== "Swift"
	```
	func gcd(_ a: Int, _ b: Int) -> Int {
		if b == 0 {
			return a
		} else {
			return gcd(b, a % b)
		}
	}

	print(gcd(206, 40))  // 应该输出 2 
	```

=== "Kotlin"
	```
	fun gcd(a: Int, b: Int): Int {
		if (b == 0) {
			return a
		} else {
			return gcd(b, a % b)
		}
	}

	fun main() {
		println(gcd(206, 40))  // 应该输出 2
	}
	```
!!! 备注
    以上代码可以用`在线IDE`进行验证，比如 [Jdoodle](https://www.jdoodle.com/)   

从上面的 **式子** 看，把 **连续取均值求平方根法** 的 **步骤** 都封装到了一个sqrt_approx的 **黑盒** 里，在计算机里面把这个 **黑盒** 称为一个 **进程**，**进程** 就是可以完成一些任务的 **步骤** 的集合。那如何指导这类 **进程** 的执行呢？简单得说，怎么指导这类 **进程** 从某一个步骤到另一个步骤以完成设定的任务。笔算时，是人在控制着步骤的顺序以便进程的执行。在计算机里，是一类被称为 **程序** 的东西指导着进程的执行，而 **程序** 是用一些 **程序语言** 精心编排而成的 **式子**，这种 **式子** 也称为 **表达式**，从其名来说也就是 `表达某个想法或某个问题`的 **式子**。**程序语言** 本质是一些 **规则模式**，类似于 **自然语言**，比如说中文、英语、数学语言、物理语言等等，程序语言也有很多种类，如`Scheme`、`Python`、`C`、`C++`、`Java`等等。用一张简化的图来表示的话，如下：

<figure markdown>
  ![](../assets/Fig1.6.png)
  <figcaption>图1.6</figcaption>
</figure>

从上面可知，**程序语言** 它不仅可以通过一些简单的、易读的符号表达了 **数学语言** 的形式化思想，而且它还弥补了 **自然语言** 的“不精确、冗长”的缺点，更重要的是它能 **运行** 看到 **结果** 反馈。但是并不是说每一个 **程序运行** 后都会得到 **正确** 的 **结果**，有些 **程序** 也会出现 **错误**，这些 **错误** 也称为 **bug**

!!! quote
	1945年，一只小飞蛾钻进了计算机电路里，导致系统无法工作，一位名叫格蕾丝·赫柏的人把飞蛾拍死在工作日志上(见图1)，写道：就是这个bug(虫子)，害我们今天的工作无法完成——于是，bug一词成了电脑系统程序的专业术语，形容那些系统中的缺陷或问题


<figure markdown>
  ![](../assets/bug.jpg)
  <figcaption>图1</figcaption>
</figure>


程序语言是一种表达思想的重要媒介，它能表达和解决数学的问题，甚至比数学语言更优雅，它还能做表达和解决其它的问题，比如物理问题、工程问题、艺术问题、经济问题、社会问题：电路分析




一种语言区别于另一种语言，在于它们之间不同的规则模式。当有人要向你展示一门新程序语言时， 你应该问他：

- 这门语言使用哪些 **基本数据**？
!!! quote
	

=== "Scheme"
	```
	; 基本数据
	(display 3) ; 整数: 3
	(newline)
	(display 7.5) ; 小数: 7.5
	(newline)
	(display 'A) ;字符: A
	(newline)
	(display #t) ;布尔值: #t或者#f
	(newline)
	(display ()) ;空值: ()
	(newline)
	
	```

=== "Python"
	```
	# 基本数据
	print(3) #整数: 3
	print(7.5) #小数: 7.5
	print('A') #字符: A
	print(True) #布尔值：True或者False
	```

=== "C"
	```
	#include<stdio.h>

	int main() {
		// 基本数据
		printf("%d\n", 3); //整数: 3
		printf("%f\n", 7.5); //小数: 7.5
		printf("%c\n", 'A'); //字符: A
		printf("%d\n", (2 > 1)); //布尔值：1或0
	}
	```	

=== "C++"
	```
	#include <iostream>
	using namespace std;

	int main(){
		cout << 3 << endl; //整数: 3
		cout << 7.5 << endl; //小数: 7.5
		cout << 'A' << endl; //字符: A
		cout << (2 > 1) << endl; //布尔值：1或者0
	}
	```

=== "Java"
	```
	public class MyClass{

		public static void main(String[] args){
			//基本数据
			System.out.println(3); //整数: 3
			System.out.println(7.5); //小数: 7.5
			System.out.println('A'); //字符: A
			System.out.println(true); //布尔值: true或者false
		}
	}
	```

=== "C#"
	```
	using System;

	class Program
	{
		static void Main(string[] args)
		{
			Console.WriteLine(3); // 整数: 3
			Console.WriteLine(7.5); // 小数: 7.5
			Console.WriteLine('A'); // 字符: A
			Console.WriteLine(true); // 布尔值: true或者false
		}
	}
	```
	
=== "PHP"
	```
	<?php
		echo 3; // 整数: 3
		echo "\n";
		echo 7.5; // 小数: 7.5
		echo "\n";
		echo 'A'; // 字符: A
		echo "\n";
		echo true; // 布尔值: 1或者0
		echo "\n";
	?>
	```	
	
=== "JavaScript"
	```
	console.log(3); // 整数: 3
	console.log(7.5); // 小数: 7.5
	console.log('A'); // 字符: A
	console.log(true); // 布尔值: true或者false
	```	
	
=== "Go"
	```
	package main

	import "fmt"

	func main() {
		fmt.Println(3)         // 整数: 3
		fmt.Println(7.5)       // 小数: 7.5
		fmt.Printf("%c\n", 'A')       // 字符: A
		fmt.Println(true)      // 布尔值: true或者false
	}
	```	
	
=== "Swift"
	```
	print(3) // 整数: 3
	print(7.5) // 小数: 7.5
	print("A") // 字符: A
	print(true) // 布尔值: true或者false
	```
	
=== "Kotlin"
	```
	fun main() {
		println(3) // 整数: 3
		println(7.5) // 小数: 7.5
		println('A') // 字符: A
		println(true) // 布尔值: true或者false
	}
	```	

- 如何 **组合** 基本数据
!!! quote
	组合数据的方式是(操作符 数据)

=== "Scheme"
	```
	; 基本运算
	(display (+ 6 2)) ;加法: +
	(newline)
	(display (- 6 2)) ;减法: -
	(newline)
	(display (* 6 2)) ;乘法: *
	(newline)
	(display (/ 6 2)) ;除法: /
	(newline)
	; 比较运算
	(display (> 6 2)) ;大于: >
	(newline)
	(display (= 6 2)) ;等于: =
	(newline)
	(display (< 6 2)) ;小于: <
	(newline)
	; 逻辑运算
	(display (and (> 2 1) (< 3 2)));与: and
	(newline) 
	(display (or (> 2 1) (< 3 2))); 或: or
	(newline)
	(display (not (> 2 1))); 非: not
	(newline)
	; 条件运算: cond、if, 以计算绝对值为例
	(define (abs-cond x) ; 条件: cond
	  (cond ((> x 0) x)
			((= x 0) 0)
			((< x 0) (- x))))

	(display (abs-cond 5)) ;5的绝对值
	(newline)
	
	(define (abs-if x) ; 条件: if
	  (if (< x 0)
		  (- x)
		  x))

	(display (abs-if -5)) ;-5的绝对值
	(newline)

	; 循环运算: 递归，以计算阶乘为例
	(define factorial
	  (lambda (n)
		(if (= n 1)
			1
			(* n (factorial (- n 1))))))

	(display (factorial 6))	;6的阶乘
	(newline)
	```

=== "Python"
	```
	# 基本运算
	print(6 + 2) # 加法: +
	print(6 - 2) # 减法: -
	print(6 * 2) # 乘法: *
	print(6 / 2) # 除法: /
	# 比较运算
	print(6 > 2) # 大于: >
	print(6 == 2)# 等于: =
	print(6 < 2) # 小于: <
	# 逻辑运算
	print((2 > 1) and (3 < 2)) # 与: and
	print((2 > 1) or (3 < 2)) # 或: or
	print(not (2 > 1)) # 非: not
	# 条件运算: if，以计算绝对值为例
	def abs(x):
		if x > 0:
			return x
		elif x == 0:
			return 0
		else:
			return -x

	print(abs(5)) # 5的绝对值
	# 循环运算: 以计算阶乘为例
	def factorial_recursion(n): #递归
		if n == 1:
			return 1
		else:
			return n * factorial_recursion(n - 1)

	def factorial_while(n): #while
		result = 1
		while n > 1:
			result *= n
			n -= 1
		return result

	def factorial_for(n): #for
		result = 1
		for i in range(1, n + 1):
			result *= i
		return result

	print(factorial_recursion(6)) # 6的阶乘
	print(factorial_while(6)) # 6的阶乘
	print(factorial_for(6)) # 6的阶乘
	```

=== "C"
	```
	#include <stdio.h>

	int main() {
		// 基本运算
		printf("%d\n", 6 + 2); // 加法: +
		printf("%d\n", 6 - 2); // 减法: -
		printf("%d\n", 6 * 2); // 乘法: *
		printf("%d\n", 6 / 2); // 除法: /
		// 比较运算
		printf("%d\n", 6 > 2); // 大于: >
		printf("%d\n", 6 == 2); // 等于: =
		printf("%d\n", 6 < 2); // 小于: <
		// 逻辑运算
		printf("%d\n", (2 > 1) && (3 < 2)); // 与: and
		printf("%d\n", (2 > 1) || (3 < 2)); // 或: or
		printf("%d\n", !(2 > 1)); // 非: not
		// 条件运算: if，以计算绝对值为例
		int abs(int x) {
			if (x > 0) {
				return x;
			} else if (x == 0) {
				return 0;
			} else {
				return -x;
			}
		}

		printf("%d\n", abs(5)); // 5的绝对值

		// 循环运算: 以计算阶乘为例
		
		int factorial_recursion(int n) {// 使用递归实现阶乘
			if (n == 1) {
				return 1;
			} else {
				return n * factorial_recursion(n - 1);
			}
		}

		int factorial_while(int n) {// 使用 while 循环实现阶乘
			int result = 1;
			while (n > 1) {
				result *= n;
				n -= 1;
			}
			return result;
		}

		int factorial_for(int n) {// 使用 for 循环实现阶乘
			int result = 1;
			for (int i = 1; i <= n; i++) {
				result *= i;
			}
			return result;
		}

		printf("%d\n", factorial_recursion(6)); // 6的阶乘
		printf("%d\n", factorial_while(6)); // 6的阶乘
		printf("%d\n", factorial_for(6)); // 6的阶乘

		return 0;
	}
	```	

=== "C++"
	```
	#include <iostream>

	using namespace std;

	// 定义 abs() 函数
	int abs(int x) {
		if (x > 0) {
			return x;
		} else if (x == 0) {
			return 0;
		} else {
			return -x;
		}
	}

	// 定义 factorial_recursion() 函数
	int factorial_recursion(int n) {
		if (n == 1) {
			return 1;
		} else {
			return n * factorial_recursion(n - 1);
		}
	}

	// 定义 factorial_while() 函数
	int factorial_while(int n) {
		int result = 1;
		while (n > 1) {
			result *= n;
			n -= 1;
		}
		return result;
	}

	// 定义 factorial_for() 函数
	int factorial_for(int n) {
		int result = 1;
		for (int i = 1; i <= n; i++) {
			result *= i;
		}
		return result;
	}

	int main() {
		// 基本运算
		cout << 6 + 2 << endl; // 加法: +
		cout << 6 - 2 << endl; // 减法: -
		cout << 6 * 2 << endl; // 乘法: *
		cout << 6 / 2 << endl; // 除法: /
		// 比较运算
		cout << (6 > 2) << endl; // 大于: >
		cout << (6 == 2) << endl; // 等于: =
		cout << (6 < 2) << endl; // 小于: <
		// 逻辑运算
		cout << ((2 > 1) && (3 < 2)) << endl; // 与: and
		cout << ((2 > 1) || (3 < 2)) << endl; // 或: or
		cout << !(2 > 1) << endl; // 非: not

		cout << abs(5) << endl; // 5的绝对值

		cout << factorial_recursion(6) << endl; // 6的阶乘
		cout << factorial_while(6) << endl; // 6的阶乘
		cout << factorial_for(6) << endl; // 6的阶乘

		return 0;
	}
	```	

=== "Java"
	```
	public class Main {
		
		public static void main(String[] args) {
			// 基本运算
			System.out.println(6 + 2); // 加法: +
			System.out.println(6 - 2); // 减法: -
			System.out.println(6 * 2); // 乘法: *
			System.out.println(6 / 2); // 除法: /
			// 比较运算
			System.out.println(6 > 2); // 大于: >
			System.out.println(6 == 2); // 等于: =
			System.out.println(6 < 2); // 小于: <
			// 逻辑运算
			System.out.println((2 > 1) && (3 < 2)); // 与: and
			System.out.println((2 > 1) || (3 < 2)); // 或: or
			System.out.println(!(2 > 1)); // 非: not
			// 条件运算
			System.out.println(abs(5)); // 5的绝对值
			//循环运算
			System.out.println(factorial_recursion(6)); // 6的阶乘
			System.out.println(factorial_while(6)); // 6的阶乘
			System.out.println(factorial_for(6)); // 6的阶乘
		}

		// 定义 abs() 函数
		public static int abs(int x) {
			if (x > 0) {
				return x;
			} else if (x == 0) {
				return 0;
			} else {
				return -x;
			}
		}

		// 定义 factorial_recursion() 函数
		public static int factorial_recursion(int n) {
			if (n == 1) {
				return 1;
			} else {
				return n * factorial_recursion(n - 1);
			}
		}

		// 定义 factorial_while() 函数
		public static int factorial_while(int n) {
			int result = 1;
			while (n > 1) {
				result *= n;
				n -= 1;
			}
			return result;
		}

		// 定义 factorial_for() 函数
		public static int factorial_for(int n) {
			int result = 1;
			for (int i = 1; i <= n; i++) {
				result *= i;
			}
			return result;
		}
	}
	```

=== "C#"
	```
	using System;

	class Program {
		// 定义 abs() 函数
		public static int abs(int x) {
			if (x > 0) {
				return x;
			} else if (x == 0) {
				return 0;
			} else {
				return -x;
			}
		}

		// 定义 factorial_recursion() 函数
		public static int factorial_recursion(int n) {
			if (n == 1) {
				return 1;
			} else {
				return n * factorial_recursion(n - 1);
			}
		}

		// 定义 factorial_while() 函数
		public static int factorial_while(int n) {
			int result = 1;
			while (n > 1) {
				result *= n;
				n -= 1;
			}
			return result;
		}

		// 定义 factorial_for() 函数
		public static int factorial_for(int n) {
			int result = 1;
			for (int i = 1; i <= n; i++) {
				result *= i;
			}
			return result;
		}

		static void Main(string[] args) {
			// 基本运算
			Console.WriteLine(6 + 2); // 加法: +
			Console.WriteLine(6 - 2); // 减法: -
			Console.WriteLine(6 * 2); // 乘法: *
			Console.WriteLine(6 / 2); // 除法: /
			// 比较运算
			Console.WriteLine(6 > 2); // 大于: >
			Console.WriteLine(6 == 2); // 等于: =
			Console.WriteLine(6 < 2); // 小于: <
			// 逻辑运算
			Console.WriteLine((2 > 1) && (3 < 2)); // 与: and
			Console.WriteLine((2 > 1) || (3 < 2)); // 或: or
			Console.WriteLine(!(2 > 1)); // 非: not
			// 条件运算
			Console.WriteLine(abs(5)); // 5的绝对值
			// 循环运算
			Console.WriteLine(factorial_recursion(6)); // 6的阶乘
			Console.WriteLine(factorial_while(6)); // 6的阶乘
			Console.WriteLine(factorial_for(6)); // 6的阶乘
		}
	}
	```

=== "PHP"
	```
	<?php
	// 定义 abs() 函数
	function abs_if($x) {
		if ($x > 0) {
			return $x;
		} else if ($x == 0) {
			return 0;
		} else {
			return -$x;
		}
	}

	// 定义 factorial_recursion() 函数
	function factorial_recursion($n) {
		if ($n == 1) {
			return 1;
		} else {
			return $n * factorial_recursion($n - 1);
		}
	}

	// 定义 factorial_while() 函数
	function factorial_while($n) {
		$result = 1;
		while ($n > 1) {
			$result *= $n;
			$n -= 1;
		}
		return $result;
	}

	// 定义 factorial_for() 函数
	function factorial_for($n) {
		$result = 1;
		for ($i = 1; $i <= $n; $i++) {
			$result *= $i;
		}
		return $result;
	}

	// 基本运算
	echo 6 + 2 . "\n"; // 加法: +
	echo 6 - 2 . "\n"; // 减法: -
	echo 6 * 2 . "\n"; // 乘法: *
	echo 6 / 2 . "\n"; // 除法: /
	// 比较运算
	echo (6 > 2) . "\n"; // 大于: >
	echo (6 == 2) . "\n"; // 等于: =
	echo (6 < 2) . "\n"; // 小于: <
	// 逻辑运算
	echo ((2 > 1) && (3 < 2)) . "\n"; // 与: and
	echo ((2 > 1) || (3 < 2)) . "\n"; // 或: or
	echo !(2 > 1) . "\n"; // 非: not
	// 条件运算
	echo abs_if(5) . "\n"; // 5的绝对值
	//循环运算
	echo factorial_recursion(6) . "\n"; // 6的阶乘
	echo factorial_while(6) . "\n"; // 6的阶乘
	echo factorial_for(6) . "\n"; // 6的阶乘
	?>
	```

=== "JavaScript"
	```
	// 定义 abs() 函数
	function abs(x) {
		if (x > 0) {
			return x;
		} else if (x === 0) {
			return 0;
		} else {
			return -x;
		}
	}

	// 定义 factorial_recursion() 函数
	function factorial_recursion(n) {
		if (n === 1) {
			return 1;
		} else {
			return n * factorial_recursion(n - 1);
		}
	}

	// 定义 factorial_while() 函数
	function factorial_while(n) {
		let result = 1;
		while (n > 1) {
			result *= n;
			n -= 1;
		}
		return result;
	}

	// 定义 factorial_for() 函数
	function factorial_for(n) {
		let result = 1;
		for (let i = 1; i <= n; i++) {
			result *= i;
		}
		return result;
	}

	// 基本运算
	console.log(6 + 2); // 加法: +
	console.log(6 - 2); // 减法: -
	console.log(6 * 2); // 乘法: *
	console.log(6 / 2); // 除法: /
	// 比较运算
	console.log(6 > 2); // 大于: >
	console.log(6 === 2); // 等于: =
	console.log(6 < 2); // 小于: <
	// 逻辑运算
	console.log((2 > 1) && (3 < 2)); // 与: and
	console.log((2 > 1) || (3 < 2)); // 或: or
	console.log(!(2 > 1)); // 非: not
	// 条件运算
	console.log(abs(5)); // 5的绝对值
	// 循环运算
	console.log(factorial_recursion(6)); // 6的阶乘
	console.log(factorial_while(6)); // 6的阶乘
	console.log(factorial_for(6)); // 6的阶乘
	```

=== "Go"
	```
	package main

	import "fmt"

	// 定义 abs() 函数
	func abs(x int) int {
		if x > 0 {
			return x
		} else if x == 0 {
			return 0
		} else {
			return -x
		}
	}

	// 定义 factorial_recursion() 函数
	func factorial_recursion(n int) int {
		if n == 1 {
			return 1
		} else {
			return n * factorial_recursion(n-1)
		}
	}

	// 定义 factorial_while() 函数
	func factorial_while(n int) int {
		result := 1
		for n > 1 {
			result *= n
			n -= 1
		}
		return result
	}

	// 定义 factorial_for() 函数
	func factorial_for(n int) int {
		result := 1
		for i := 1; i <= n; i++ {
			result *= i
		}
		return result
	}

	func main() {
		// 基本运算
		fmt.Println(6 + 2) // 加法: +
		fmt.Println(6 - 2) // 减法: -
		fmt.Println(6 * 2) // 乘法: *
		fmt.Println(6 / 2) // 除法: /
		// 比较运算
		fmt.Println(6 > 2) // 大于: >
		fmt.Println(6 == 2) // 等于: =
		fmt.Println(6 < 2) // 小于: <
		// 逻辑运算
		fmt.Println((2 > 1) && (3 < 2)) // 与: and
		fmt.Println((2 > 1) || (3 < 2)) // 或: or
		fmt.Println(!(2 > 1)) // 非: not
		// 条件运算
		fmt.Println(abs(5)) // 5的绝对值
		// 循环运算
		fmt.Println(factorial_recursion(6)) // 6的阶乘
		fmt.Println(factorial_while(6)) // 6的阶乘
		fmt.Println(factorial_for(6)) // 6的阶乘
	}
	```

=== "Swift"
	```
	// 定义 abs() 函数
	func abs(_ x: Int) -> Int {
		if x > 0 {
			return x
		} else if x == 0 {
			return 0
		} else {
			return -x
		}
	}

	// 定义 factorial_recursion() 函数
	func factorial_recursion(_ n: Int) -> Int {
		if n == 1 {
			return 1
		} else {
			return n * factorial_recursion(n - 1)
		}
	}

	// 定义 factorial_while() 函数
	func factorial_while(_ n: Int) -> Int {
		var result = 1
		var i = n
		while i > 1 {
			result *= i
			i -= 1
		}
		return result
	}

	// 定义 factorial_for() 函数
	func factorial_for(_ n: Int) -> Int {
		var result = 1
		for i in 1...n {
			result *= i
		}
		return result
	}

	// 基本运算
	print(6 + 2) // 加法: +
	print(6 - 2) // 减法: -
	print(6 * 2) // 乘法: *
	print(6 / 2) // 除法: /
	// 比较运算
	print(6 > 2) // 大于: >
	print(6 == 2) // 等于: =
	print(6 < 2) // 小于: <
	// 逻辑运算
	print((2 > 1) && (3 < 2)) // 与: and
	print((2 > 1) || (3 < 2)) // 或: or
	print(!(2 > 1)) // 非: not
	// 条件运算
	print(abs(5)) // 5的绝对值
	// 循环运算
	print(factorial_recursion(6)) // 6的阶乘
	print(factorial_while(6)) // 6的阶乘
	print(factorial_for(6)) // 6的阶乘
	```

=== "Kotlin"
	```
	// 定义 abs() 函数
	fun abs(x: Int): Int {
		if (x > 0) {
			return x
		} else if (x == 0) {
			return 0
		} else {
			return -x
		}
	}

	// 定义 factorial_recursion() 函数
	fun factorial_recursion(n: Int): Int {
		if (n == 1) {
			return 1
		} else {
			return n * factorial_recursion(n - 1)
		}
	}

	// 定义 factorial_while() 函数
	fun factorial_while(n: Int): Int {
		var result = 1
		var i = n
		while (i > 1) {
			result *= i
			i -= 1
		}
		return result
	}

	// 定义 factorial_for() 函数
	fun factorial_for(n: Int): Int {
		var result = 1
		for (i in 1..n) {
			result *= i
		}
		return result
	}

	fun main() {
		// 基本运算
		println(6 + 2) // 加法: +
		println(6 - 2) // 减法: -
		println(6 * 2) // 乘法: *
		println(6 / 2) // 除法: /
		// 比较运算
		println(6 > 2) // 大于: >
		println(6 == 2) // 等于: =
		println(6 < 2) // 小于: <
		// 逻辑运算
		println((2 > 1) && (3 < 2)) // 与: and
		println((2 > 1) || (3 < 2)) // 或: or
		println(!(2 > 1)) // 非: not
		// 条件运算
		println(abs(5)) // 5的绝对值
		// 循环运算
		println(factorial_recursion(6)) // 6的阶乘
		println(factorial_while(6)) // 6的阶乘
		println(factorial_for(6)) // 6的阶乘
	}
	```


- 怎么 **命名** 某个东西？怎么 **组合** 复合数据？并将它们当作单元去操作？
!!! quote
	知道事物各部分的名称或者表达式各部分的名称很重要，每个“魔法师”都会告诉你，如果你能叫出一个“精灵”的名字，你就有控制它的能力，所以你得知道这些名字，以便之后的讨论。这个名字就是变量，使用变量的方便之处在于，不必记住并重复写出这个变量所指向的那个东西的实现细节。可以给三种东西命名：

	- 基本数据

	- 组合式

	- 函数

	- 类和对象

=== "Scheme"
	```
	; 给基本数据命名
	(define pi 3.14)
	(display pi)
	(newline)
	; 给组合式命名
	(define A (* 3 5))
	(display A)
	(newline)
	; 给函数命名
	(define square
	  (lambda (x) (* x x)))
	(display (square 5))
	(newline)
	; 给类和对象命名，比如有理数

	(define make-rat ;构造有理数
	  (lambda (n d)
		(cons n d)))

	(define numer ;分子
	  (lambda (x)
		(car x)))

	(define denom ;分母
	  (lambda (x)
		(cdr x)))
		
	(define (add-rat x y) ;有理数相加
	  (make-rat (+ (* (numer x) (denom y))
				   (* (numer y) (denom x)))
				(* (denom x) (denom y))))	

	(define (print-rat x) ;打印有理数
	  (display (numer x))
	  (display "/")
	  (display (denom x))
	  (newline))

	(define x (make-rat 3 4));构造一个有理数：3/4
	(define y (make-rat 2 5));构造一个有理数：2/5
	(print-rat (add-rat x y));打印有理数3/4和2/5：23/20
	```
	
=== "Python"
	```
	# 给基本数据命名
	pi = 3.14
	print(pi)

	# 给组合式命名
	A = 3 * 5
	print(A)

	# 给函数命名
	def square(x):
		return x * x

	print(square(5))

	# 给类和对象命名，比如有理数，采用“胶水技术”
	def make_rat(n, d): #构造有理数
		return (n, d)

	def numer(x): #分子
		return x[0]

	def denom(x): #分母
		return x[1]

	def add_rat(x, y): #两个有理数相加
		return make_rat(numer(x) * denom(y) + numer(y) * denom(x), denom(x) * denom(y))

	def print_rat(x): #打印有理数
		print(numer(x), "/", denom(x))

	x = make_rat(3, 4)  # 构造一个有理数：3/4
	y = make_rat(2, 5)  # 构造一个有理数：2/5
	print_rat(add_rat(x, y))  # 打印有理数3/4和2/5：23/20

	# 给类和对象命名，比如有理数，采用“对象思想”
	class Rational:
		def __init__(self, n, d):#构造有理数
			self.numer = n #分子
			self.denom = d #分母

		def __add__(self, other): #两个有理数相加
			return Rational(self.numer * other.denom + other.numer * self.denom, self.denom * other.denom)

		def __str__(self): #打印有理数
			return f"{self.numer}/{self.denom}"

	x = Rational(3, 4) # 构造一个有理数：3/4
	y = Rational(2, 5) # 构造一个有理数：2/5
	print(x + y) # 打印有理数3/4和2/5：23/20
	```
	
=== "C"
	```
	#include <stdio.h>

	int main() {
		// 给基本数据命名
		float pi = 3.14;
		printf("%f\n", pi);
		
		// 给组合式命名
		int A = 3 * 5;
		printf("%d\n", A);
		
		// 给函数命名
		int square(int x) {
			return x * x;
		}
		printf("%d\n", square(5));

		// 给类和对象命名，比如有理数
		struct Rational {
			int numer; // 分子
			int denom; // 分母
		};

		struct Rational add_rat(struct Rational x, struct Rational y) { // 有理数相加
			return (struct Rational) {x.numer * y.denom + y.numer * x.denom, x.denom * y.denom};
		}

		void print_rat(struct Rational x) { // 打印有理数
			printf("%d/%d\n", x.numer, x.denom);
		}

		struct Rational x = {3, 4}; // 构造一个有理数：3/4
		struct Rational y = {2, 5}; // 构造一个有理数：2/5
		print_rat(add_rat(x, y)); // 打印有理数3/4和2/5：23/20

		return 0;
	}
	```
	
=== "C++"
	```
	#include <iostream>

	using namespace std;

	// 给函数命名
	int square(int x) {
		return x * x;
	}

	// 给类和对象命名，采用“胶水技术”
	struct Rational1 {
		int n;
		int d;
	};

	Rational1 make_rat1(int n, int d) { // 构造有理数
		Rational1 r = {n, d};
		return r;
	}

	int numer1(Rational1 x) { // 分子
		return x.n;
	}

	int denom1(Rational1 x) { // 分母
		return x.d;
	}

	Rational1 add_rat1(Rational1 x, Rational1 y) { // 有理数相加
		return make_rat1(numer1(x) * denom1(y) + numer1(y) * denom1(x), denom1(x) * denom1(y));
	}

	void print_rat1(Rational1 x) { // 打印有理数
		cout << x.n << "/" << x.d << endl;
	}


	// 给类和对象命名，采用“对象思想”
	class Rational2 {
		public:
			Rational2(int n, int d): numer(n), denom(d) {} // 构造有理数
			Rational2 operator+(const Rational2& other) const { // 有理数相加
				return Rational2(numer * other.denom + other.numer * denom, denom * other.denom);
			}
			friend ostream& operator<<(ostream& os, const Rational2& r) { // 打印有理数
				os << r.numer << "/" << r.denom;
				return os;
			}
		private:
			int numer; // 分子
			int denom; // 分母
	};

	int main() {
		// 给基本数据命名
		float pi = 3.14;
		cout << pi << endl;
		
		// 给组合式命名
		int A = 3 * 5;
		cout << A << endl;
		// 给函数命名
		cout << square(5) << endl;
		
		// 给类和对象命名，采用“胶水技术”
		Rational1 x1 = make_rat1(3, 4); // 构造一个有理数：3/4
		Rational1 y1 = make_rat1(2, 5); // 构造一个有理数：2/5
		print_rat1(add_rat1(x1, y1)); // 打印有理数3/4和2/5：23/20

		// 给类和对象命名，采用“对象思想”
		Rational2 x2{3, 4}; // 构造一个有理数：3/4
		Rational2 y2{2, 5}; // 构造一个有理数：2/5
		cout << x2 + y2 << endl; // 打印有理数3/4和2/5：23/20

		return 0;
	}
	```
	
=== "Java"
	```
	public class Program {
		
		public static void main(String[] args) {
			// 给基本数据命名
			float pi = 3.14f;
			System.out.println(pi);

			// 给组合式命名
			int A = 3 * 5;
			System.out.println(A);

			// 调用square函数
			System.out.println(square(5));

			// 给类和对象命名，比如有理数，采用“对象思想”
			class Rational {
				private int numer; // 分子
				private int denom; // 分母

				public Rational(int n, int d) {
					numer = n;
					denom = d;
				}

				// 两个有理数相加
				public Rational add(Rational other) {
					int n = numer * other.denom + other.numer * denom;
					int d = denom * other.denom;
					return new Rational(n, d);
				}

				// 打印有理数
				public String toString() {
					return numer + "/" + denom;
				}
			}

			Rational x = new Rational(3, 4); // 构造一个有理数：3/4
			Rational y = new Rational(2, 5); // 构造一个有理数：2/5
			System.out.println(x.add(y)); // 打印有理数3/4和2/5：23/20
		}
		
		//给函数命名
		public static int square(int x) {
			return x * x;
		}
	}
	```
	
=== "C#"
	```
	using System;

	class Program {
		
		static void Main() {
			// 给基本数据命名
			float pi = 3.14f;
			Console.WriteLine(pi);

			// 给组合式命名
			int A = 3 * 5;
			Console.WriteLine(A);

			//调用Square
			Console.WriteLine(Square(5));

			//实例化有理数Rational
			Rational x = new Rational(3, 4); // 构造一个有理数：3/4
			Rational y = new Rational(2, 5); // 构造一个有理数：2/5
			Console.WriteLine(x.Add(y)); // 打印有理数3/4和2/5：23/20
		}
		
		// 给函数命名
		static int Square(int x) {
			return x * x;
		}
		
		
		// 给类和对象命名，比如有理数，采用“对象思想”
		class Rational {
			private int numer; // 分子
			private int denom; // 分母

			public Rational(int n, int d) {
				numer = n;
				denom = d;
			}

			// 两个有理数相加
			public Rational Add(Rational other) {
				int n = numer * other.denom + other.numer * denom;
				int d = denom * other.denom;
				return new Rational(n, d);
			}

			// 打印有理数
			public override string ToString() {
				return numer + "/" + denom;
			}
		}
	}
	```
	
=== "PHP"
	```
	<?php
		// 给基本数据命名
		$pi = 3.14;
		echo $pi . "\n";
		
		// 给组合式命名
		$A = 3 * 5;
		echo $A . "\n";
		
		// 给函数命名
		function square($x) {
			return $x * $x;
		}
		echo square(5) . "\n";
		
		// 给类和对象命名，比如有理数，采用“胶水技术”
		function make_rat($n, $d) { // 构造有理数
			return array($n, $d);
		}
		
		function numer($x) { // 分子
			return $x[0];
		}
		
		function denom($x) { // 分母
			return $x[1];
		}
		
		function add_rat($x, $y) { // 两个有理数相加
			$n = numer($x) * denom($y) + numer($y) * denom($x);
			$d = denom($x) * denom($y);
			return make_rat($n, $d);
		}
		
		function print_rat($x) { // 打印有理数
			echo numer($x) . "/" . denom($x) . "\n";
		}
		
		$x = make_rat(3, 4); // 构造一个有理数：3/4
		$y = make_rat(2, 5); // 构造一个有理数：2/5
		print_rat(add_rat($x, $y)); // 打印有理数3/4和2/5：23/20
		
		// 给类和对象命名，比如有理数，采用“对象思想”
		class Rational {
			private $numer; // 分子
			private $denom; // 分母
		
			public function __construct($n, $d) { // 构造有理数
				$this->numer = $n;
				$this->denom = $d;
			}
		
			// 两个有理数相加
			public function add($other) {
				$n = $this->numer * $other->denom + $other->numer * $this->denom;
				$d = $this->denom * $other->denom;
				return new self($n, $d);
			}
		
			// 打印有理数
			public function __toString() {
				return $this->numer . "/" . $this->denom;
			}
		}
		
		$x = new Rational(3, 4); // 构造一个有理数：3/4
		$y = new Rational(2, 5); // 构造一个有理数：2/5
		echo $x->add($y) . "\n"; // 打印有理数3/4和2/5：23/20
	?>
	```

=== "JavaScript"
	```
	// 给基本数据命名
	var pi = 3.14;
	console.log(pi);

	// 给组合式命名
	var A = 3 * 5;
	console.log(A);

	// 给函数命名
	function square(x) {
	  return x * x;
	}
	console.log(square(5));

	// 给类和对象命名，比如有理数，采用“胶水技术”
	function make_rat(n, d) { // 构造有理数
	  return { numer: n, denom: d };
	}

	function numer(x) { // 分子
	  return x.numer;
	}

	function denom(x) { // 分母
	  return x.denom;
	}

	function add_rat(x, y) { // 两个有理数相加
	  var n = numer(x) * denom(y) + numer(y) * denom(x);
	  var d = denom(x) * denom(y);
	  return make_rat(n, d);
	}

	function print_rat(x) { // 打印有理数
	  console.log(numer(x) + "/" + denom(x));
	}

	var x = make_rat(3, 4); // 构造一个有理数：3/4
	var y = make_rat(2, 5); // 构造一个有理数：2/5
	print_rat(add_rat(x, y)); // 打印有理数3/4和2/5：23/20

	// 给类和对象命名，比如有理数，采用“对象思想”
	function Rational(n, d) {
	  this.numer = n; // 分子
	  this.denom = d; // 分母
	}

	// 两个有理数相加
	Rational.prototype.add = function (other) {
	  var n = this.numer * other.denom + other.numer * this.denom;
	  var d = this.denom * other.denom;
	  return new Rational(n, d);
	};

	// 打印有理数
	Rational.prototype.toString = function () {
	  return this.numer + "/" + this.denom;
	};

	var r1 = new Rational(3, 4); // 构造一个有理数：3/4
	var r2 = new Rational(2, 5); // 构造一个有理数：2/5
	console.log(r1.add(r2).toString()); // 打印有理数3/4和2/5：23/20
	```
	
=== "Go"
	```
	package main

	import "fmt"


	// 给类和对象命名，比如有理数，采用结构体
	type Rational struct {
		numer int // 分子
		denom int // 分母
	}

	// 构造有理数
	func make_rat(n int, d int) Rational {
		return Rational{numer: n, denom: d}
	}

	// 分子
	func numer(x Rational) int {
		return x.numer
	}

	// 分母
	func denom(x Rational) int {
		return x.denom
	}

	// 两个有理数相加
	func add_rat(x Rational, y Rational) Rational {
		n := numer(x)*denom(y) + numer(y)*denom(x)
		d := denom(x) * denom(y)
		return make_rat(n, d)
	}

	// 打印有理数
	func print_rat(x Rational) {
		fmt.Printf("%d/%d\n", numer(x), denom(x))
	}

	// 平方函数
	func square(x int) int {
		return x * x
	}

	func main() {
		// 给基本数据命名
		var pi float64 = 3.14
		fmt.Println(pi)

		// 给组合式命名
		var A int = 3 * 5
		fmt.Println(A)

		// 调用函数square
		fmt.Println(square(5))
		
		//测试有理数
		x := make_rat(3, 4) // 构造一个有理数：3/4
		y := make_rat(2, 5) // 构造一个有理数：2/5
		print_rat(add_rat(x, y)) // 打印有理数3/4和2/5：23/20
	}
	```
	
=== "Swift"
	```
	import Foundation

	// 给基本数据命名
	let pi: Float = 3.14
	print(pi)

	// 给组合式命名
	let A: Int = 3 * 5
	print(A)

	// 调用函数square
	print(square(x:5))

	// 给类和对象命名，比如有理数，采用结构体
	struct Rational {
		var numer: Int // 分子
		var denom: Int // 分母
	}

	// 构造有理数
	func make_rat(n: Int, d: Int) -> Rational {
		return Rational(numer: n, denom: d)
	}

	// 分子
	func numer(x: Rational) -> Int {
		return x.numer
	}

	// 分母
	func denom(x: Rational) -> Int {
		return x.denom
	}

	// 两个有理数相加
	func add_rat(x: Rational, y: Rational) -> Rational {
		let n = numer(x: x) * denom(x: y) + numer(x: y) * denom(x: x)
		let d = denom(x: x) * denom(x: y)
		return make_rat(n: n, d: d)
	}

	// 打印有理数
	func print_rat(x: Rational) {
		print("\(numer(x: x))/\(denom(x: x))")
	}

	var x = make_rat(n: 3, d: 4) // 构造一个有理数：3/4
	var y = make_rat(n: 2, d: 5) // 构造一个有理数：2/5
	print_rat(x: add_rat(x: x, y: y)) // 打印有理数3/4和2/5：23/20

	// 平方函数
	func square(x: Int) -> Int {
		return x * x
	}
	```
	
=== "Kotlin"
	```
	import kotlin.math.*

	fun main() {
		// 给基本数据命名
		var pi = 3.14
		println(pi)

		// 给组合式命名
		var A = 3 * 5
		println(A)

		// 给函数命名
		fun square(x: Int) = x * x
		println(square(5))

		// 给类和对象命名，比如有理数，采用数据类
		data class Rational(val numer: Int, val denom: Int)

		// 分子
		fun numer(x: Rational) = x.numer

		// 分母
		fun denom(x: Rational) = x.denom

		// 两个有理数相加
		fun add_rat(x: Rational, y: Rational): Rational {
			val n = numer(x) * denom(y) + numer(y) * denom(x)
			val d = denom(x) * denom(y)
			return Rational(n, d)
		}

		// 打印有理数
		fun print_rat(x: Rational) {
			println("${numer(x)}/${denom(x)}")
		}

		var x = Rational(3, 4) // 构造一个有理数：3/4
		var y = Rational(2, 5) // 构造一个有理数：2/5
		print_rat(add_rat(x, y)) // 打印有理数3/4和2/5：23/20
	}
	```



