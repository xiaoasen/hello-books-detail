---
comments: true
---

# 计算机的本质

计算机的本质是什么呢？我认为计算机的本质就是一种工具。比如说：求平方根。平方根在数学中是这样定义的：

```
x的平方根y是这样的一个数：y的平方等于x，且y大于或等于0
```

这个定义只告诉你平方根是什么，却没有告诉你如何去求取一个平方根。那么如何求一个平方根呢？公元一世纪亚历山大的Heron提出了一个 **连续取均值求平方根法**：

```
为了求出平方根：
1. 给出一个猜测值guess
2. 不断改进猜测值guess，改进的方法是：不断求猜测值guess与x/guess的平均值
3. 通过不断改进，直到它足够精确停止计算，比如说小于0.0001就停止下来
```

根据上面的步骤，你可以用笔在纸上算出某个数的平方根，这种方法的的缺点就是要做很多的重复的工作且容易出错。此时计算机就应运而生，它解决了笔算的重复和易错问题。上面的步骤，在计算机里面称为一个进程，什么是进程？进程就是可以完成一些任务的步骤的集合。那如何指导这类过程的执行呢？简单得说，怎么指导这类进程从某一个步骤到另一个步骤以完成设定的任务。笔算时，是人在控制着步骤的顺序以便进程的执行。在计算机里，是一类被称为程序的东西指导着进程的执行，而程序是用一些程序设计语言，通过符号表达式的形式精心编排而成。程序语言本质是一些规则模式，类似于人类语言，比如说中文、英语、数学语言、物理语言等等，程序语言也有很多种类，如Scheme、Python、C、C++、Java等等。

程序语言跟其它语言一样，是一种表达思想的形式化媒介。例如要表达上面的 **连续取均值求平方根法**，有三个明显的选择：

- 自然语言，例如：中文。自然语言是模糊两可的，不精确的，有时笨拙且冗长。

- 数学语言，跟自然语言刚好相反：它能用很少的几个符号来表达形式化的思想，但是数学语言往往是神秘高深的，如果没有特殊的训练，就几乎无法理解。

- 程序语言：它不仅可以通过一些简单的、易读的符号表达了数学的形式化思想，而且它弥补了自然语言的“不精确、冗长”的缺点。更重要的它能直接的体验：你可以观察它的行为，修改它，执行可以看到结果。

下面来看一下怎么用程序语言来表达上面所说的 **连续取均值求平方根法**：

=== "Scheme"
    ```
    ; 求 x 的平方根
	(define (sqrt-approx x)
      ; (2) 不断改进猜测值 guess
	  (define (improve-guess guess)
		(/ (+ guess (/ x guess)) 2))
	  ; (3) 猜测值guess是否足够好？阈值是：0.0001
	  (define (good-enough? guess)
		(< (abs (- (* guess guess) x)) 0.0001))
	
	  (define (sqrt-iter guess)
		(if (good-enough? guess)
			guess ;返回结果
			(sqrt-iter (improve-guess guess))))
      ; (1) 给出一个猜测值1      
	  (sqrt-iter 1.0))

	; 测试16的平方根，输出：4.000000636692939
	(display (sqrt-approx 16)) 
	```

=== "Python"
	```
	# 求 x 的平方根
	def sqrt_approx(x):
		# (1) 给出一个猜测值1
		guess = 1
		
		# (3) 猜测值guess是否足够好？阈值是：0.0001
		while abs(guess*guess - x) > 0.0001:
			# (2) 不断改进猜测值 guess
			guess = (guess + x/guess) / 2
		
		# 返回结果
		return guess

	# 测试16的平方根，输出：4.000000636692939
	print(sqrt_approx(16)) 
	```    
	
=== "C"
	```
	#include <stdio.h>
	#include <math.h>

    // 求 x 的平方根
	double sqrt_approx(double x) {
        //(1) 给出一个猜测值：1，和一个"足够好的"阈值：0.0001
		double guess = 1.0;
		double epsilon = 0.0001;
        // (3) 猜测值guess是否足够好？
		while (fabs(guess*guess - x) > epsilon) {
            // (2) 不断改进猜测值 guess
			guess = (guess + x/guess) / 2.0;
		}
		
        // 返回结果
		return guess;
	}

	int main() {
        //测试16的平方根，输出：4.00001
		double x = 16.0;
		printf("%f", sqrt_approx(x)); 
		return 0;
	}
	```
	
=== "C++"
	```
	#include <iostream>
	#include <cmath>

    // 求 x 的平方根
	double sqrt_approx(double x) {
        //(1) 给出一个猜测值：1，和一个"足够好的"阈值：0.0001
		double guess = 1.0;
		double epsilon = 0.0001;
		
        // (3) 猜测值guess是否足够好？
		while (std::fabs(guess*guess - x) > epsilon) {
            // (2) 不断改进猜测值 guess
			guess = (guess + x/guess) / 2.0;
		}
		
        // 返回结果
		return guess;
	}

	int main() {
        //测试16的平方根，输出：4
		double x = 16.0;
		std::cout << sqrt_approx(x) << std::endl; 
		return 0;
	}
	```	
	
=== "Java"
	```
	public class Main {
		// 求 x 的平方根
		public static double sqrt_approx(double x) {
			//(1) 给出一个猜测值：1，和一个"足够好的"阈值：0.0001
			double guess = 1.0;
			double epsilon = 0.0001;
			
			// (3) 猜测值guess是否足够好？
			while (Math.abs(guess*guess - x) > epsilon) {
				// (2) 不断改进猜测值 guess
				guess = (guess + x/guess) / 2.0;
			}
			
			// 返回结果
			return guess;
		}
		
		public static void main(String[] args) {
			//测试16的平方根，输出：4.000000636692939
			double x = 16.0;
			System.out.println(sqrt_approx(x));
		}
	}
	```

=== "C#"
	```
	using System;

	public class MyClass {
		// 求 x 的平方根
		public static double sqrt_approx(double x) {
			//(1) 给出一个猜测值：1，和一个"足够好的"阈值：0.0001
			double guess = 1.0;
			double epsilon = 0.0001;
			
			// (3) 猜测值guess是否足够好？
			while (Math.Abs(guess*guess - x) > epsilon) {
				// (2) 不断改进猜测值 guess
				guess = (guess + x/guess) / 2.0;
			}
			
			// 返回结果
			return guess;
		}
		
		public static void Main(string[] args) {
			//测试16的平方根，输出：4.00000063669294
			double x = 16.0;
			Console.WriteLine(sqrt_approx(x)); 
		}
	}
	```	
	
=== "PHP"
	```
	<?php
		
	// 求 x 的平方根
	function sqrt_approx($x) {
		//(1) 给出一个猜测值：1，和一个"足够好的"阈值：0.0001
		$guess = 1.0;
		$epsilon = 0.0001;
		
		// (3) 猜测值guess是否足够好？
		while (abs($guess*$guess - $x) > $epsilon) {
			// (2) 不断改进猜测值 guess
			$guess = ($guess + $x/$guess) / 2.0;
		}
		
		// 返回结果
		return $guess;
	}

	//测试16的平方根，输出：4.0000006366929
	$x = 16.0;
	echo sqrt_approx($x);

	?>
	```	

=== "JavaScript"
	```
	// 求 x 的平方根 
	function sqrt_approx(x) {
		//(1) 给出一个猜测值：1，和一个"足够好的"阈值：0.0001
		let guess = 1.0;
		let epsilon = 0.0001;
		
		// (3) 猜测值guess是否足够好？
		while (Math.abs(guess*guess - x) > epsilon) {
			// (2) 不断改进猜测值 guess
			guess = (guess + x/guess) / 2.0;
		}
		
		// 返回结果
		return guess;
	}

	//测试16的平方根，输出：4.000000636692939
	let x = 16.0;
	console.log(sqrt_approx(x)); 
	```
	
=== "Go"
	```
	package main

	import (
		"fmt"
		"math"
	)

	// 求 x 的平方根 
	func sqrt_approx(x float64) float64 {
		//(1) 给出一个猜测值：1，和一个"足够好的"阈值：0.0001
		guess := 1.0
		epsilon := 0.0001
		// (3) 猜测值guess是否足够好？
		for math.Abs(guess*guess - x) > epsilon {
			// (2) 不断改进猜测值 guess
			guess = (guess + x/guess) / 2.0
		}
		// 返回结果
		return guess
	}

	func main() {
		//测试16的平方根，输出：4.000000636692939
		x := 16.0
		fmt.Println(sqrt_approx(x)) 
	}
	```

=== "Swift"
	```
	// 求 x 的平方根
	func sqrt_approx(x: Double) -> Double {
		//(1) 给出一个猜测值：1，和一个"足够好的"阈值：0.0001
		var guess = 1.0
		let epsilon = 0.0001
		// (3) 猜测值guess是否足够好？
		while abs(guess*guess - x) > epsilon {
			// (2) 不断改进猜测值 guess
			guess = (guess + x/guess) / 2.0
		}
		// 返回结果
		return guess
	}
	//测试16的平方根，输出：4.000000636692939
	let x = 16.0
	print(sqrt_approx(x: x)) 
	```

=== "Kotlin"
	```
	// 求 x 的平方根
	fun sqrt_approx(x: Double): Double {
		//(1) 给出一个猜测值：1，和一个"足够好的"阈值：0.0001
		var guess = 1.0
		val epsilon = 0.0001
		
		// (3) 猜测值guess是否足够好？
		while (Math.abs(guess*guess - x) > epsilon) {
			// (2) 不断改进猜测值 guess
			guess = (guess + x/guess) / 2.0
		}
		// 返回结果
		return guess
	}

	fun main() {
		//测试16的平方根，输出：4.000000636692939
		val x = 16.0
		println(sqrt_approx(x)) 
	}
	```

!!! 备注
    以上代码可以用`在线IDE`进行验证，比如 [Jdoodle](https://www.jdoodle.com/)   


从上面可知，程序不仅仅是一种表达思想的媒介，而且还能运行看到效果反馈。但是并不是说每一个程序都是准确无误。恰好相反，很多程序充满着错误，有些错误是往往导致不可挽回的损失。这些错误统称为"bug":

!!! quote
	1945年，一只小飞蛾钻进了计算机电路里，导致系统无法工作，一位名叫格蕾丝·赫柏的人把飞蛾拍死在工作日志上(见图1)，写道：就是这个bug(虫子)，害我们今天的工作无法完成——于是，bug一词成了电脑系统程序的专业术语，形容那些系统中的缺陷或问题


<figure markdown>
  ![](../assets/bug.jpg)
  <figcaption>图1</figcaption>
</figure>


一种语言区别于另一种语言，在于它们之间不同的规则模式。当有人要向你展示一门新程序语言时， 你应该问他：

```
1. 这门语言使用哪些基本元素？
2. 如何将这些元素组合在一起？
3. 怎么给某个东西命名，并将它当作单元去操作？
```

还是拿上面的 **求平方根** 的例子进行说明:
=== "Scheme"
    ```
    ; 求 x 的平方根
    ; 1. 基本元素（包括基本数据和基本过程）
    ; (1) 0.0001、1、2、16-->基本的数据
    ; (2) +、-、*、/、abs、<、display-->基本过程
    ; 2. 组合方法
    ; (1) if --> 用于条件判断
    ; 3. 抽象方法
    ; (1) define --> 给某个东西命名

	(define (sqrt-approx x)
      ; (2) 不断改进猜测值 guess
	  (define (improve-guess guess)
		(/ (+ guess (/ x guess)) 2))
	  ; (3) 猜测值guess是否足够好？阈值是：0.0001
	  (define (good-enough? guess)
		(< (abs (- (* guess guess) x)) 0.0001))
	
	  (define (sqrt-iter guess)
		(if (good-enough? guess)
			guess ;返回结果
			(sqrt-iter (improve-guess guess))))
      ; (1) 给出一个猜测值1      
	  (sqrt-iter 1.0))

	; 测试16的平方根，输出：4.000000636692939
	(display (sqrt-approx 16)) 
	```

=== "Python"
	```
	# 求 x 的平方根
    # 1. 基本元素（包括基本数据和基本过程）
    # (1) 0.0001、1、2、16-->基本的数据
    # (2) +、-、*、/、=、abs、>、print-->基本过程
    # 2. 组合方法
    # (1) while --> 用于循环
    # 3. 抽象方法
    # (1) def --> 给某个东西命名
	def sqrt_approx(x):
		# (1) 给出一个猜测值1
		guess = 1
		
		# (3) 猜测值guess是否足够好？阈值是：0.0001
		while abs(guess*guess - x) > 0.0001:
			# (2) 不断改进猜测值 guess
			guess = (guess + x/guess) / 2
		
		# 返回结果
		return guess

	# 测试16的平方根，输出：4.000000636692939
	print(sqrt_approx(16)) 
	```    
	
=== "C"
	```
	#include <stdio.h>
	#include <math.h>

    /* 求 x 的平方根
    1. 基本元素（包括基本数据和基本过程）
    (1) 0.0001、1.0、2.0、16.0-->基本的数据
    (2) +、-、*、/、=、fabs、>、print-->基本过程
    2. 组合方法
    (1) while --> 用于循环
    3. 抽象方法
    (1) double；int --> 给某个东西命名以及定义为某种类型
    */
	double sqrt_approx(double x) {
        //(1) 给出一个猜测值：1，和一个"足够好的"阈值：0.0001
		double guess = 1.0;
		double epsilon = 0.0001;
        // (3) 猜测值guess是否足够好？
		while (fabs(guess*guess - x) > epsilon) {
            // (2) 不断改进猜测值 guess
			guess = (guess + x/guess) / 2.0;
		}
		
        // 返回结果
		return guess;
	}

	int main() {
        //测试16的平方根，输出：4.00001
		double x = 16.0;
		printf("%f", sqrt_approx(x)); 
		return 0;
	}
	```
	
=== "C++"
	```
	#include <iostream>
	#include <cmath>

    /* 求 x 的平方根
    1. 基本元素（包括基本数据和基本过程）
    (1) 0.0001、1.0、2.0、16.0-->基本的数据
    (2) +、-、*、/、=、fabs、>、cout-->基本过程
    2. 组合方法
    (1) while --> 用于循环
    3. 抽象方法
    (1) double；int --> 给某个东西命名以及定义为某种类型
    */
	double sqrt_approx(double x) {
        //(1) 给出一个猜测值：1，和一个"足够好的"阈值：0.0001
		double guess = 1.0;
		double epsilon = 0.0001;
		
        // (3) 猜测值guess是否足够好？
		while (std::fabs(guess*guess - x) > epsilon) {
            // (2) 不断改进猜测值 guess
			guess = (guess + x/guess) / 2.0;
		}
		
        // 返回结果
		return guess;
	}

	int main() {
        //测试16的平方根，输出：4
		double x = 16.0;
		std::cout << sqrt_approx(x) << std::endl; 
		return 0;
	}
	```	
	
=== "Java"
	```
	public class Main {
		/* 求 x 的平方根
        1. 基本元素（包括基本数据和基本过程）
        (1) 0.0001、1.0、2.0、16.0-->基本的数据
        (2) +、-、*、/、=、abs、>、println-->基本过程
        2. 组合方法
        (1) while --> 用于循环
        3. 抽象方法
        (1) double、void --> 给某个东西命名以及定义为某种类型
        */
		public static double sqrt_approx(double x) {
			//(1) 给出一个猜测值：1，和一个"足够好的"阈值：0.0001
			double guess = 1.0;
			double epsilon = 0.0001;
			
			// (3) 猜测值guess是否足够好？
			while (Math.abs(guess*guess - x) > epsilon) {
				// (2) 不断改进猜测值 guess
				guess = (guess + x/guess) / 2.0;
			}
			
			// 返回结果
			return guess;
		}
		
		public static void main(String[] args) {
			//测试16的平方根，输出：4.000000636692939
			double x = 16.0;
			System.out.println(sqrt_approx(x));
		}
	}
	```

=== "C#"
	```
	using System;

	public class MyClass {
		/* 求 x 的平方根
        1. 基本元素（包括基本数据和基本过程）
        (1) 0.0001、1.0、2.0、16.0-->基本的数据
        (2) +、-、*、/、=、Abs、>、WriteLine-->基本过程
        2. 组合方法
        (1) while --> 用于循环
        3. 抽象方法
        (1) double、void --> 给某个东西命名以及定义为某种类型
        */
		public static double sqrt_approx(double x) {
			//(1) 给出一个猜测值：1，和一个"足够好的"阈值：0.0001
			double guess = 1.0;
			double epsilon = 0.0001;
			
			// (3) 猜测值guess是否足够好？
			while (Math.Abs(guess*guess - x) > epsilon) {
				// (2) 不断改进猜测值 guess
				guess = (guess + x/guess) / 2.0;
			}
			
			// 返回结果
			return guess;
		}
		
		public static void Main(string[] args) {
			//测试16的平方根，输出：4.00000063669294
			double x = 16.0;
			Console.WriteLine(sqrt_approx(x)); 
		}
	}
	```	
	
=== "PHP"
	```
	<?php
		
	/* 求 x 的平方根
    1. 基本元素（包括基本数据和基本过程）
    (1) 0.0001、1.0、2.0、16.0-->基本的数据
    (2) +、-、*、/、=、abs、>、echo-->基本过程
    2. 组合方法
    (1) while --> 用于循环
    3. 抽象方法
    (1) $、function --> 给某个东西命名
    */
	function sqrt_approx($x) {
		//(1) 给出一个猜测值：1，和一个"足够好的"阈值：0.0001
		$guess = 1.0;
		$epsilon = 0.0001;
		
		// (3) 猜测值guess是否足够好？
		while (abs($guess*$guess - $x) > $epsilon) {
			// (2) 不断改进猜测值 guess
			$guess = ($guess + $x/$guess) / 2.0;
		}
		
		// 返回结果
		return $guess;
	}

	//测试16的平方根，输出：4.0000006366929
	$x = 16.0;
	echo sqrt_approx($x);

	?>
	```	

=== "JavaScript"
	```
	/* 求 x 的平方根
    1. 基本元素（包括基本数据和基本过程）
    (1) 0.0001、1.0、2.0、16.0-->基本的数据
    (2) +、-、*、/、=、abs、>、log-->基本过程
    2. 组合方法
    (1) while --> 用于循环
    3. 抽象方法
    (1) let、function --> 给某个东西命名
    */ 
	function sqrt_approx(x) {
		//(1) 给出一个猜测值：1，和一个"足够好的"阈值：0.0001
		let guess = 1.0;
		let epsilon = 0.0001;
		
		// (3) 猜测值guess是否足够好？
		while (Math.abs(guess*guess - x) > epsilon) {
			// (2) 不断改进猜测值 guess
			guess = (guess + x/guess) / 2.0;
		}
		
		// 返回结果
		return guess;
	}

	//测试16的平方根，输出：4.000000636692939
	let x = 16.0;
	console.log(sqrt_approx(x)); 
	```
	
=== "Go"
	```
	package main

	import (
		"fmt"
		"math"
	)

	/* 求 x 的平方根
    1. 基本元素（包括基本数据和基本过程）
    (1) 0.0001、1.0、2.0、16.0-->基本的数据
    (2) +、-、*、/、:=、Abs、>、Println-->基本过程
    2. 组合方法
    (1) while --> 用于循环
    3. 抽象方法
    (1) func、float64 --> 给某个东西命名以及定义为某种类型
    */  
	func sqrt_approx(x float64) float64 {
		//(1) 给出一个猜测值：1，和一个"足够好的"阈值：0.0001
		guess := 1.0
		epsilon := 0.0001
		// (3) 猜测值guess是否足够好？
		for math.Abs(guess*guess - x) > epsilon {
			// (2) 不断改进猜测值 guess
			guess = (guess + x/guess) / 2.0
		}
		// 返回结果
		return guess
	}

	func main() {
		//测试16的平方根，输出：4.000000636692939
		x := 16.0
		fmt.Println(sqrt_approx(x)) 
	}
	```

=== "Swift"
	```
	/* 求 x 的平方根
    1. 基本元素（包括基本数据和基本过程）
    (1) 0.0001、1.0、2.0、16.0-->基本的数据
    (2) +、-、*、/、=、abs、>、print-->基本过程
    2. 组合方法
    (1) while --> 用于循环
    3. 抽象方法
    (1) func、Double --> 给某个东西命名以及定义为某种类型
    (2) let-->给某个东西命名以及赋予某个值
    */ 
	func sqrt_approx(x: Double) -> Double {
		//(1) 给出一个猜测值：1，和一个"足够好的"阈值：0.0001
		var guess = 1.0
		let epsilon = 0.0001
		// (3) 猜测值guess是否足够好？
		while abs(guess*guess - x) > epsilon {
			// (2) 不断改进猜测值 guess
			guess = (guess + x/guess) / 2.0
		}
		// 返回结果
		return guess
	}
	//测试16的平方根，输出：4.000000636692939
	let x = 16.0
	print(sqrt_approx(x: x)) 
	```

=== "Kotlin"
	```
	/* 求 x 的平方根
    1. 基本元素（包括基本数据和基本过程）
    (1) 0.0001、1.0、2.0、16.0-->基本的数据
    (2) +、-、*、/、=、abs、>、println-->基本过程
    2. 组合方法
    (1) while --> 用于循环
    3. 抽象方法
    (1) fun、Double、var、val --> 给某个东西命名以及定义为某种类型
    */ 
	fun sqrt_approx(x: Double): Double {
		//(1) 给出一个猜测值：1，和一个"足够好的"阈值：0.0001
		var guess = 1.0
		val epsilon = 0.0001
		
		// (3) 猜测值guess是否足够好？
		while (Math.abs(guess*guess - x) > epsilon) {
			// (2) 不断改进猜测值 guess
			guess = (guess + x/guess) / 2.0
		}
		// 返回结果
		return guess
	}

	fun main() {
		//测试16的平方根，输出：4.000000636692939
		val x = 16.0
		println(sqrt_approx(x)) 
	}
	```


