---
comments: true
---

# 程序的形状
我们需要有一些有关程序“形状”的直觉，才能写出好的程序，就像一名摄影师，在按下快门之前，大脑里面要有一副大致的画面轮廓，这样才能拍出好的照片。
下面通过几个例子来看一下程序背后的“形状”是什么样的？

## 两个数的平方和

=== "Scheme"
    ```
	; 求数x的平方
    (define (sq x)
    (* x x))
	
	; 求两个数的平方和
    (define (sos x y)
    (+ (sq x) (sq y)))

	; 测试3和4的平方和，输出：25	
    (display (sos 3 4))

    ```

=== "Python"
	```
	# 求数x的平方
	def sq(x):
		return x * x
		
	# 求两个数的平方和
	def sos(x, y):
		return sq(x) + sq(y)

	# 测试3和4的平方和，输出：25	
	print(sos(3, 4))

	```    

=== "C"
	```
	#include <stdio.h>
	#include <math.h>

	// 求数x的平方
	int sq(int x){
		return x * x;
	}

	// 求两个数的平方
	int sos(int x, int y){
		return sq(x) + sq(y);
	}

	int main(){
		//测试3和4的平方和，输出：25
		printf("%d", sos(3, 4));
		return 0;
	}

	```

=== "C++"
	```
	#include <iostream>
	using namespace std;

	class MyClass{
	public:
		// 求两个数的平方
		int sos(int x, int y){
			return sq(x) + sq(y);
		}
		
	private:
		// 求数x的平方
		int sq(int x){
			return x * x;
		}
	};

	int main(){
		//测试3和4的平方和，输出：25
		MyClass myCls;
		cout << myCls.sos(3, 4)<< endl;
	}

	```

=== "Java"
	```
	public class MyClass{
		// 求数x的平方
		public static int sq(int x){
			return x * x;
		}
		
		// 求两个数的平方
		public static int sos(int x, int y){
			return sq(x) + sq(y);
		}
		
		public static void main(String[] args){
			//测试3和4的平方和，输出：25
			System.out.println(sos(3, 4));
		}
	}

	```

=== "C#"
	```
	using System;

	public class MyClass{
		// 求数x的平方
		public static int sq(int x){
			return x * x;
		}
		
		// 求两个数的平方
		public static int sos(int x, int y){
			return sq(x) + sq(y);
		}
		
		public static void Main(String[] args){
			//测试3和4的平方和，输出：25
			Console.WriteLine(sos(3, 4));
		}
	}
	```

=== "PHP"
	```
	<?php

	// 求数x的平方
	function sq($x){
		return $x * $x;
	}

	// 求两个数的平方
	function sos($x, $y){
		return sq($x) + sq($y);
	}

	//测试3和4的平方和，输出：25
	echo sos(3, 4);

	?>
	```

=== "JavaScript"
	```
	// 求数x的平方
	function sq(x){
		return x * x;
	}

	// 求两个数的平方
	function sos(x, y){
		return sq(x) + sq(y);
	}

	//测试3和4的平方和，输出：25
	console.log(sos(3, 4));

	```

=== "Go"
	```
	package main

	import(
		"fmt"
	)

	// 求数x的平方
	func sq(x int) int{
		return x * x;
	}

	// 求两个数的平方
	func sos(x int, y int) int{
		return sq(x) + sq(y);
	}

	//测试3和4的平方和，输出：25
	func main(){
		fmt.Println(sos(3, 4))
	}

	```

=== "Swift"
	```
	// 求数x的平方
	func sq(x: Int) -> Int{
		return x * x;
	}
	// 求两个数的平方
	func sos(x: Int, y: Int) -> Int{
		return sq(x: x) + sq(x: y);
	}
	//测试3和4的平方和，输出：25
	print(sos(x: 3, y: 4));

	```

=== "Kotlin"
	```
	// 求数x的平方
	fun sq(x: Int): Int{
		return x * x;
	}
	// 求两个数的平方
	fun sos(x: Int, y: Int): Int{
		return sq(x) + sq(y);
	}
	//测试3和4的平方和，输出：25
	fun main(){
		println(sos(3, 4));
	}
	```

上面这些程序的“形状”如下：

```
(sos 3 4)
(+ (sq 3) (sq 4))
(+ (sq 3) (* 4 4))
(+ (sq 3) 16)
(+ (* 3 3) 16)
(+ 9 16)
25
```