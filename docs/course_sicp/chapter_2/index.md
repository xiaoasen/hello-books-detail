---
comments: true
---

# 数据和变量
什么是数据？数据是计算机这种虚拟环境里面的程序操作的一种东西，类似于物理世界里面衣服、房子、道路、桥梁、大山这种东西。物理世界里面的东西有分类，数据也有着分类，一般分为：

	- 数值：整数、小数、有理数等等

	- 字符：ascii 字符、字符串

	- 布尔值：对事实做判断：真或假

	- 空值：空值，undefined、void等等

	- 函数：函数并没有什么特殊之处，它也不过是一个变量，会产生一个值。

	- 对象：对象也是一个变量，是物理世界里面的物体的一种映射。

## 数值

!!! quote "什么是数？"

	由人类智慧所创造的数，可用来表示各种集合中的对象的个数，它和对象所特有的性质无关。例如数“6”是从所有包含六个东西的实际集合中抽象出来的；它依赖这些对象的任何特殊性质，也不依赖于表示它所采用的符号。

	“—— R·柯朗.H·罗宾 《什么是数学》”

=== "Scheme"
	```
	; 基本数据
	(display 3) ; 整数: 3
	(newline)
	(display 7.5) ; 小数: 7.5
	(newline)
	```

=== "Python"
	```
	# 基本数据
	print(3) #整数: 3
	print(7.5) #小数: 7.5
	```

=== "C"
	```
	#include<stdio.h>

	int main() {
		// 基本数据
		printf("%d\n", 3); //整数: 3
		printf("%f\n", 7.5); //小数: 7.5
	}
	```	

=== "C++"
	```
	#include <iostream>
	using namespace std;

	int main(){
		cout << 3 << endl; //整数: 3
		cout << 7.5 << endl; //小数: 7.5
	}
	```

=== "Java"
	```
	public class MyClass{

		public static void main(String[] args){
			//基本数据
			System.out.println(3); //整数: 3
			System.out.println(7.5); //小数: 7.5
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
	?>
	```	
	
=== "JavaScript"
	```
	console.log(3); // 整数: 3
	console.log(7.5); // 小数: 7.5
	```	
	
=== "Go"
	```
	package main

	import "fmt"

	func main() {
		fmt.Println(3)         // 整数: 3
		fmt.Println(7.5)       // 小数: 7.5
	}
	```	
	
=== "Swift"
	```
	print(3) // 整数: 3
	print(7.5) // 小数: 7.5
	```
	
=== "Kotlin"
	```
	fun main() {
		println(3) // 整数: 3
		println(7.5) // 小数: 7.5
	}
	```	

## 字符

!!! quote "什么是字符？"

	字符就是人类的自然语言，有单个字符和多个字符，而后者就组成了字符串，比如说英文“Hello World”，中文“你好 世界”
=== "Scheme"
	```
	(display 'A) ;字符: A
	(newline)
	(display "你好 世界") ;字符串：你好 世界
	(newline)
	```

=== "Python"
	```
	print('A') #字符: A
	print("你好 世界") #字符串：你好 世界
	```

=== "C"
	```
	#include<stdio.h>

	int main() {
		printf("A\n"); //字符: A
    	printf("你好 世界\n"); //字符串：你好 世界
	}
	```	

=== "C++"
	```
	#include <iostream>
	using namespace std;

	int main(){
		cout << 'A' << endl; //字符: A
		cout << "你好 世界" << endl; //字符串：你好 世界
	}
	```

=== "Java"
	```
	public class MyClass{

		public static void main(String[] args){
			System.out.println('A'); //字符: A
			System.out.println("你好 世界"); //字符串：你好 世界
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
			Console.WriteLine('A'); // 字符: A
			Console.WriteLine("你好 世界"); //字符串：你好 世界
		}
	}
	```
	
=== "PHP"
	```
	<?php
		echo 'A'; // 字符: A
		echo "\n";
		echo "你好 世界"; //字符串：你好 世界
		echo "\n"; 
	?>
	```	
	
=== "JavaScript"
	```
	console.log('A'); // 字符: A
	console.log("你好 世界"); //字符串：你好 世界
	```	
	
=== "Go"
	```
	package main

	import "fmt"

	func main() {
		fmt.Printf("%c\n", 'A')  // 字符: A
		fmt.Println("你好 世界") //字符串：你好 世界
	}
	```	
	
=== "Swift"
	```
	print("A") // 字符: A
	print("你好 世界") //字符串：你好 世界
	```
	
=== "Kotlin"
	```
	fun main() {
		println('A') // 字符: A
		println("你好 世界") //字符串：你好 世界
	}
	```	

## 布尔值

!!! quote "什么是布尔值？"

	对表达式进行判断：真或者假，比如说"2 > 3"这条表达式的值是：假，

=== "Scheme"
	```
	(display #t) ;布尔值: #t
	(newline)
	(display #f) ;布尔值: #f
	(newline)
	
	```

=== "Python"
	```
	print(True) #布尔值：True
	print(False) #布尔值：False
	```

=== "C"
	```
	#include<stdio.h>

	int main() {
		printf("%d\n", 1); //布尔值：1
		printf("%d\n", 0); //布尔值：0
	}
	```	

=== "C++"
	```
	#include <iostream>
	using namespace std;

	int main(){
		cout << 1 << endl; //布尔值：1
		cout << 0 << endl; //布尔值：0
	}
	```

=== "Java"
	```
	public class MyClass{

		public static void main(String[] args){
			System.out.println(true); //布尔值: true
			System.out.println(false); //布尔值: false
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
			Console.WriteLine(true); // 布尔值: true
			Console.WriteLine(false); // 布尔值: false
		}
	}
	```
	
=== "PHP"
	```
	<?php
		echo true; // 布尔值: true
		echo "\n";
		echo false; // 布尔值: false, 没打印显示出来？
		echo "\n";
	?>
	```	
	
=== "JavaScript"
	```
	console.log(true); // 布尔值: true
	console.log(false); // 布尔值: false
	```	
	
=== "Go"
	```
	package main

	import "fmt"

	func main() {
		fmt.Println(true) // 布尔值: true
		fmt.Println(false) // 布尔值: false
	}
	```	
	
=== "Swift"
	```
	print(true) // 布尔值: true
	print(false) // 布尔值: false
	```
	
=== "Kotlin"
	```
	fun main() {
		println(true) // 布尔值: true
		println(false) // 布尔值: false
	}
	```	

## 变量

!!! quote "什么是变量？"

	知道事物各部分的名称或者表达式各部分的名称很重要，每个“魔法师”都会告诉你，如果你能叫出一个“精灵”的名字，你就有控制它的能力，所以你得知道这些名字，以便之后的讨论。这个名字就是变量，使用变量的方便之处在于，不必记住并重复写出这个变量所指向的那个东西的实现细节。

=== "Scheme"
	```
	(define mInt 3) ;定义一个整型变量：mInt，并初始化一个值：3
	(define mFloat 7.5) ;定义一个浮点数变量：mFloat，并初始化一个值：7.5
	(define mChar 'A) ;定义一个字符变量：mChar，并初始化一个值：A
	(define mString "你好 世界") ;定义一个字符串变量：mString，并初始化一个值：你好 世界
	(define mTrue #t) ;定义一个布尔真值变量：mTrue，并初始化一个值：#t
	(define mFalse #f) ;定义一个布尔假值变量：mFalse，并初始化一个值：#f

	(display mInt) (newline) ;打印出变量 mInt 的值：3
	(display mFloat) (newline) ;打印出变量 mFloat 的值：7.5
	(display mChar) (newline) ;打印出变量 mChar 的值：A
	(display mString) (newline) ;打印出变量 mString 的值：你好 世界
	(display mTrue) (newline) ;打印出变量 mTrue 的值：#t
	(display mFalse) (newline) ;打印出变量 mFalse 的值：#f
	```

=== "Python"
	```
	mInt = 3 # 定义一个整型变量：mInt，并初始化一个值：3
	mFloat = 7.5 # 定义一个浮点数变量：mFloat，并初始化一个值：7.5
	mChar = 'A' # 定义一个字符变量：mChar，并初始化一个值：A
	mString = '你好 世界' # 定义一个字符串变量：mString，并初始化一个值：你好 世界
	mTrue = True # 定义一个布尔真值变量：mTrue，并初始化一个值：True
	mFalse = False # 定义一个布尔假值变量：mFalse，并初始化一个值：False

	print(mInt) # 打印变量 mInt 的值：3
	print(mFloat) # 打印变量 mFloat 的值：7.5
	print(mChar) # 打印变量 mChar 的值：A
	print(mString) # 打印变量 mString 的值：你好 世界
	print(mTrue) # 打印变量 mTrue 的值：True
	print(mFalse) # 打印变量 mFalse 的值：False
	```

=== "C"
	```
	#include <stdio.h>
	#include <stdbool.h>

	int main() {
		int mInt = 3; // 定义一个整型变量：mInt，并初始化一个值：3
		float mFloat = 7.5; // 定义一个浮点数变量：mFloat，并初始化一个值：7.5
		char mChar = 'A'; // 定义一个字符变量：mChar，并初始化一个值：A
		char mString[] = "你好 世界"; // 定义一个字符串变量：mString，并初始化一个值：你好 世界
		bool mTrue = true; // 定义一个布尔真值变量：mTrue，并初始化一个值：true
		bool mFalse = false; // 定义一个布尔假值变量：mFalse，并初始化一个值：false

		printf("%d\n", mInt); // 打印变量 mInt 的值：3
		printf("%f\n", mFloat); // 打印变量 mFloat 的值：7.5
		printf("%c\n", mChar); // 打印变量 mChar 的值：A
		printf("%s\n", mString); // 打印变量 mString 的值：你好 世界
		printf("%d\n", mTrue); // 打印变量 mTrue 的值：1
		printf("%d\n", mFalse); // 打印变量 mFalse 的值：0

		return 0;
	}
	```

=== "C++"
	```
	#include <iostream>
	#include <string>

	using namespace std;

	int main() {
		int mInt = 3; // 定义一个整型变量：mInt，并初始化一个值：3
		float mFloat = 7.5; // 定义一个浮点数变量：mFloat，并初始化一个值：7.5
		char mChar = 'A'; // 定义一个字符变量：mChar，并初始化一个值：A
		string mString = "你好 世界"; // 定义一个字符串变量：mString，并初始化一个值：你好 世界
		bool mTrue = true; // 定义一个布尔真值变量：mTrue，并初始化一个值：true
		bool mFalse = false; // 定义一个布尔假值变量：mFalse，并初始化一个值：false

		cout << mInt << endl; // 打印变量 mInt 的值：3
		cout << mFloat << endl; // 打印变量 mFloat 的值：7.5
		cout << mChar << endl; // 打印变量 mChar 的值：A
		cout << mString << endl; // 打印变量 mString 的值：你好 世界
		cout << mTrue << endl; // 打印变量 mTrue 的值：1
		cout << mFalse << endl; // 打印变量 mFalse 的值：0

		return 0;
	}
	```

=== "Java"
	```
	public class VarClass {
		public static void main(String[] args) {
			int mInt = 3; // 定义一个整型变量：mInt，并初始化一个值：3
			float mFloat = 7.5f; // 定义一个浮点数变量：mFloat，并初始化一个值：7.5
			char mChar = 'A'; // 定义一个字符变量：mChar，并初始化一个值：A
			String mString = "你好 世界"; // 定义一个字符串变量：mString，并初始化一个值：你好 世界
			boolean mTrue = true; // 定义一个布尔真值变量：mTrue，并初始化一个值：true
			boolean mFalse = false; // 定义一个布尔假值变量：mFalse，并初始化一个值：false

			System.out.println(mInt); // 打印变量 mInt 的值：3
			System.out.println(mFloat); // 打印变量 mFloat 的值：7.5
			System.out.println(mChar); // 打印变量 mChar 的值：A
			System.out.println(mString); // 打印变量 mString 的值：你好 世界
			System.out.println(mTrue); // 打印变量 mTrue 的值：true
			System.out.println(mFalse); // 打印变量 mFalse 的值：false
		}
	}
	```

=== "C#"
	```
	using System;

	class VarClass {
		static void Main() {
			int mInt = 3; // 定义一个整型变量：mInt，并初始化一个值：3
			float mFloat = 7.5f; // 定义一个浮点数变量：mFloat，并初始化一个值：7.5
			char mChar = 'A'; // 定义一个字符变量：mChar，并初始化一个值：A
			string mString = "你好 世界"; // 定义一个字符串变量：mString，并初始化一个值：你好 世界
			bool mTrue = true; // 定义一个布尔真值变量：mTrue，并初始化一个值：true
			bool mFalse = false; // 定义一个布尔假值变量：mFalse，并初始化一个值：false

			Console.WriteLine(mInt); // 打印变量 mInt 的值：3
			Console.WriteLine(mFloat); // 打印变量 mFloat 的值：7.5
			Console.WriteLine(mChar); // 打印变量 mChar 的值：A
			Console.WriteLine(mString); // 打印变量 mString 的值：你好 世界
			Console.WriteLine(mTrue); // 打印变量 mTrue 的值：True
			Console.WriteLine(mFalse); // 打印变量 mFalse 的值：False
		}
	}
	```

=== "PHP"
	```
	<?php
	$mInt = 3; // 定义一个整型变量：mInt，并初始化一个值：3
	$mFloat = 7.5; // 定义一个浮点数变量：mFloat，并初始化一个值：7.5
	$mChar = 'A'; // 定义一个字符变量：mChar，并初始化一个值：A
	$mString = "你好 世界"; // 定义一个字符串变量：mString，并初始化一个值：你好 世界
	$mTrue = true; // 定义一个布尔真值变量：mTrue，并初始化一个值：true
	$mFalse = false; // 定义一个布尔假值变量：mFalse，并初始化一个值：false

	echo $mInt . "\n"; // 打印变量 mInt 的值：3
	echo $mFloat . "\n"; // 打印变量 mFloat 的值：7.5
	echo $mChar . "\n"; // 打印变量 mChar 的值：A
	echo $mString . "\n"; // 打印变量 mString 的值：你好 世界
	echo $mTrue . "\n"; // 打印变量 mTrue 的值：1
	echo $mFalse . "\n"; // 打印变量 mFalse 的值：(空白)

	?>
	```

=== "JavaScript"
	```
	var mInt = 3; // 定义一个整型变量：mInt，并初始化一个值：3
	var mFloat = 7.5; // 定义一个浮点数变量：mFloat，并初始化一个值：7.5
	var mChar = 'A'; // 定义一个字符变量：mChar，并初始化一个值：A
	var mString = "你好 世界"; // 定义一个字符串变量：mString，并初始化一个值：你好 世界
	var mTrue = true; // 定义一个布尔真值变量：mTrue，并初始化一个值：true
	var mFalse = false; // 定义一个布尔假值变量：mFalse，并初始化一个值：false

	console.log(mInt); // 打印变量 mInt 的值：3
	console.log(mFloat); // 打印变量 mFloat 的值：7.5
	console.log(mChar); // 打印变量 mChar 的值：A
	console.log(mString); // 打印变量 mString 的值：你好 世界
	console.log(mTrue); // 打印变量 mTrue 的值：true
	console.log(mFalse); // 打印变量 mFalse 的值：false
	```

=== "Go"
	```
	package main

	import "fmt"

	func main() {
		mInt := 3 // 定义一个整型变量：mInt，并初始化一个值：3
		mFloat := 7.5 // 定义一个浮点数变量：mFloat，并初始化一个值：7.5
		mChar := 'A' // 定义一个字符变量：mChar，并初始化一个值：A
		mString := "你好 世界" // 定义一个字符串变量：mString，并初始化一个值：你好 世界
		mTrue := true // 定义一个布尔真值变量：mTrue，并初始化一个值：true
		mFalse := false // 定义一个布尔假值变量：mFalse，并初始化一个值：false

		fmt.Println(mInt) // 打印变量 mInt 的值：3
		fmt.Println(mFloat) // 打印变量 mFloat 的值：7.5
		fmt.Println(mChar) // 打印变量 mChar 的值：A
		fmt.Println(mString) // 打印变量 mString 的值：你好 世界
		fmt.Println(mTrue) // 打印变量 mTrue 的值：true
		fmt.Println(mFalse) // 打印变量 mFalse 的值：false
	}
	```

=== "Swift"
	```
	var mInt = 3 // 定义一个整型变量：mInt，并初始化一个值：3
	var mFloat = 7.5 // 定义一个浮点数变量：mFloat，并初始化一个值：7.5
	var mChar: Character = "A" // 定义一个字符变量：mChar，并初始化一个值：A
	var mString = "你好 世界" // 定义一个字符串变量：mString，并初始化一个值：你好 世界
	var mTrue = true // 定义一个布尔真值变量：mTrue，并初始化一个值：true
	var mFalse = false // 定义一个布尔假值变量：mFalse，并初始化一个值：false

	print(mInt) // 打印变量 mInt 的值：3
	print(mFloat) // 打印变量 mFloat 的值：7.5
	print(mChar) // 打印变量 mChar 的值：A
	print(mString) // 打印变量 mString 的值：你好 世界
	print(mTrue) // 打印变量 mTrue 的值：true
	print(mFalse) // 打印变量 mFalse 的值：false
	```

=== "Kotlin"
	```
	fun main() {
		var mInt = 3 // 定义一个整型变量：mInt，并初始化一个值：3
		var mFloat = 7.5 // 定义一个浮点数变量：mFloat，并初始化一个值：7.5
		var mChar = 'A' // 定义一个字符变量：mChar，并初始化一个值：A
		var mString = "你好 世界" // 定义一个字符串变量：mString，并初始化一个值：你好 世界
		var mTrue = true // 定义一个布尔真值变量：mTrue，并初始化一个值：true
		var mFalse = false // 定义一个布尔假值变量：mFalse，并初始化一个值：false

		println(mInt) // 打印变量 mInt 的值：3
		println(mFloat) // 打印变量 mFloat 的值：7.5
		println(mChar) // 打印变量 mChar 的值：A
		println(mString) // 打印变量 mString 的值：你好 世界
		println(mTrue) // 打印变量 mTrue 的值：true
		println(mFalse) // 打印变量 mFalse 的值：false
	}
	```


## 函数

!!! quote "什么是函数？"

	假设有这样的一个场景：你的数学老师要求你填写下面式子的空格，也就是用一个数字替换"?"

	$$
	\begin{array}{cccccccccccc}\mathrm{x=}&1&2&3&4&5&6&7&8&9&10\\\hline\mathrm{y=}&1&4&9&16&25&36&49&64&81&?\end{array}
	$$

	你可能很快就找到规律：

	$$
	y=x^{2}
	$$

	从上可以看出函数是一种规律或者说关系，也就是描述某些量中有一些变动时，其它一些量如何跟着变动。


=== "Scheme"
	```
	; 定义一个名为 square 的函数，其功能是计算某个数 x 的平方。函数分为两部分：
	; 1. 形参表：(x)
	; 2. 函数体：(* x x)
	(define square
	(lambda (x) (* x x)))

	; 使用函数，输入一个数：5，然后输出一个结果：25
	(display (square 5))
	```

=== "Python"
	```
	# 定义一个名为 square 的函数，其功能是计算某个数 x 的平方。函数分为两部分：
	# 1. 形参表：(x)
	# 2. 函数体：(* x x)
	def square(x):
		return x * x

	# 使用函数，输入一个数：5，然后输出一个结果：25
	print(square(5))
	```

=== "C"
	```
	#include <stdio.h>

	// 定义一个名为 square 的函数，其功能是计算某个数 x 的平方。函数分为两部分：
	// 1. 形参表：(x)
	// 2. 函数体：(x * x)
	int square(int x) {
		return x * x;
	}

	int main() {
		// 使用函数，输入一个数：5，然后输出一个结果：25
		printf("%d", square(5));
		return 0;
	}
	```

=== "C++"
	```
	#include <iostream>

	// 定义一个名为 square 的函数，其功能是计算某个数 x 的平方。函数分为两部分：
	// 1. 形参表：(x)
	// 2. 函数体：(x * x)
	int square(int x) {
		return x * x;
	}

	int main() {
		// 使用函数，输入一个数：5，然后输出一个结果：25
		std::cout << square(5);
		return 0;
	}
	```

=== "Java"
	```
	public class FunClass {
		// 定义一个名为 square 的函数，其功能是计算某个数 x 的平方。函数分为两部分：
		// 1. 形参表：(x)
		// 2. 函数体：(x * x)
		public static int square(int x) {
			return x * x;
		}

		public static void main(String[] args) {
			// 使用函数，输入一个数：5，然后输出一个结果：25
			System.out.println(square(5));
		}
	}
	```

=== "C#"
	```
	using System;

	public class FunClass {
		// 定义一个名为 square 的函数，其功能是计算某个数 x 的平方。函数分为两部分：
		// 1. 形参表：(x)
		// 2. 函数体：(x * x)
		public static int square(int x) {
			return x * x;
		}

		public static void Main() {
			// 使用函数，输入一个数：5，然后输出一个结果：25
			Console.WriteLine(square(5));
		}
	}
	```

=== "PHP"
	```
	<?php
	// 定义一个名为 square 的函数，其功能是计算某个数 x 的平方。函数分为两部分：
	// 1. 形参表：(x)
	// 2. 函数体：(x * x)
	function square($x) {
		return $x * $x;
	}

	// 使用函数，输入一个数：5，然后输出一个结果：25
	echo square(5);
	?>
	```

=== "JavaScript"
	```
	// 定义一个名为 square 的函数，其功能是计算某个数 x 的平方。函数分为两部分：
	// 1. 形参表：(x)
	// 2. 函数体：(x * x)
	function square(x) {
		return x * x;
	}

	// 使用函数，输入一个数：5，然后输出一个结果：25
	console.log(square(5));
	```

=== "Go"
	```
	package main

	import "fmt"

	// 定义一个名为 square 的函数，其功能是计算某个数 x 的平方。函数分为两部分：
	// 1. 形参表：(x)
	// 2. 函数体：(x * x)
	func square(x int) int {
		return x * x
	}

	func main() {
		// 使用函数，输入一个数：5，然后输出一个结果：25
		fmt.Println(square(5))
	}
	```

=== "Swift"
	```
	// 定义一个名为 square 的函数，其功能是计算某个数 x 的平方。函数分为两部分：
	// 1. 形参表：(x: Int)
	// 2. 函数体：(x * x)
	func square(x: Int) -> Int {
		return x * x
	}

	// 使用函数，输入一个数：5，然后输出一个结果：25
	print(square(x: 5))
	```

=== "Kotlin"
	```
	fun main() {
		// 使用函数，输入一个数：5，然后输出一个结果：25
		println(square(5))
	}

	// 定义一个名为 square 的函数，其功能是计算某个数 x 的平方。函数分为两部分：
	// 1. 形参表：(x: Int)
	// 2. 函数体：(x * x)
	fun square(x: Int): Int {
		return x * x
	}
	```	

## 对象

!!! quote "什么是对象？"

	什么是对象？这个概念并不明确。我们倾向于以对象的角度思考，因为这样思考比较经济，这是一种智力上的经济。我是一个对象，你也是一个对象，但我们不是同一个对象，我可以把世界分为两部分，我和你以及其它的东西，使得大多数对于我的讨论不会影响到你，大多数对于你的讨论不会牵涉到我。我有血压、体温、呼吸频率、血糖值等数不清的状态变量，你也有许许多多这样的变量，我们的大多数变量之间是好无联系的，所以可以计算我的属性，而不用太担心你的属性。如果把我们两个放在一起计算，那么我们需要考虑的状态的数量，就是你与我的状态的数量的乘积，按对象解耦的话 则只需考虑你我状态之和，然而 实际上有一种力量把我们耦合起来，我对你讲话 你的状态就变了，我看着你 我的状态就变了，因此 我的变量中的一小部分与你的一些变量是耦合的，如果你突然大喊大叫，我的血压就会升高

	"—— 《计算机程序的构造与解释》"

=== "Scheme"
	```
	;构建平面中的一个点对象
	(define (make-point x y)
	  (cons x y))

	;取出一个点对象的x坐标
	(define (point-x p)
	  (car p))

	;取出一个点对象的y坐标
	(define (point-y p)
	  (cdr p))

	;测试
	(define poi (make-point 5 3)) ; 构建一个平面的点对象：x坐标=5，y坐标=3
	(display poi) (newline) ;打印出点poi对象为：(5 . 3)
	(display (point-x poi)) (newline) ;打印出点poi对象的x坐标为：5
	(display (point-y poi)) (newline) ;打印出点poi对象的y坐标为：3
	```

=== "Python"
	```
	# 构建平面中的一个点对象
	def make_point(x, y):
		return (x, y)

	# 取出一个点对象的x坐标
	def point_x(p):
		return p[0]

	# 取出一个点对象的y坐标
	def point_y(p):
		return p[1]

	# 测试
	poi = make_point(5, 3) # 构建一个平面的点对象：x坐标=5，y坐标=3
	print(poi) # 打印出点poi对象为：(5, 3)
	print(point_x(poi)) # 打印出点poi对象的x坐标为：5
	print(point_y(poi)) # 打印出点poi对象的y坐标为：3
	```

=== "C"
	```
	#include <stdio.h>

	// 定义一个名为 point 的结构体，包含两个成员变量：x 和 y
	struct point {
		int x;
		int y;
	};

	int main() {
		// 构建平面中的一个点对象
		struct point poi = {5, 3}; // 构建一个平面的点对象：x坐标=5，y坐标=3
		printf("(%d, %d)\n", poi.x, poi.y); // 打印出点poi对象为：(5, 3)
		printf("%d\n", poi.x); // 打印出点poi对象的x坐标为：5
		printf("%d\n", poi.y); // 打印出点poi对象的y坐标为：3

		return 0;
	}
	```

=== "C++"
	```
	#include <iostream>

	using namespace std;

	// 定义一个名为 Point 的类，包含两个私有成员变量：x 和 y
	class Point {
	private:
		int x;
		int y;

	public:
		// 构造函数
		Point(int x, int y) {
			this->x = x;
			this->y = y;
		}

		// 取出一个点对象的x坐标
		int get_x() {
			return x;
		}

		// 取出一个点对象的y坐标
		int get_y() {
			return y;
		}
	};

	int main() {
		// 构建平面中的一个点对象
		Point poi(5, 3); // 构建一个平面的点对象：x坐标=5，y坐标=3
		cout << "(" << poi.get_x() << ", " << poi.get_y() << ")" << endl; // 打印出点poi对象为：(5, 3)
		cout << poi.get_x() << endl; // 打印出点poi对象的x坐标为：5
		cout << poi.get_y() << endl; // 打印出点poi对象的y坐标为：3

		return 0;
	}
	```

=== "Java"
	```
	public class Program {
		public static void main(String[] args) {
			// 构建平面中的一个点对象
			Point poi = new Point(5, 3); // 构建一个平面的点对象：x坐标=5，y坐标=3
			System.out.println("(" + poi.getX() + ", " + poi.getY() + ")"); // 打印出点poi对象为：(5, 3)
			System.out.println(poi.getX()); // 打印出点poi对象的x坐标为：5
			System.out.println(poi.getY()); // 打印出点poi对象的y坐标为：3
		}
	}

	// 定义一个名为 Point 的类，包含两个私有成员变量：x 和 y
	class Point {
		private int x;
		private int y;

		// 构造函数
		public Point(int x, int y) {
			this.x = x;
			this.y = y;
		}

		// 取出一个点对象的x坐标
		public int getX() {
			return x;
		}

		// 取出一个点对象的y坐标
		public int getY() {
			return y;
		}
	}
	```

=== "C#"
	```
	using System;

	// 定义一个名为 Point 的类，包含两个私有成员变量：x 和 y
	class Point {
		private int x;
		private int y;

		// 构造函数
		public Point(int x, int y) {
			this.x = x;
			this.y = y;
		}

		// 取出一个点对象的x坐标
		public int GetX() {
			return x;
		}

		// 取出一个点对象的y坐标
		public int GetY() {
			return y;
		}
	}

	class Program {
		static void Main(string[] args) {
			// 构建平面中的一个点对象
			Point poi = new Point(5, 3); // 构建一个平面的点对象：x坐标=5，y坐标=3
			Console.WriteLine("(" + poi.GetX() + ", " + poi.GetY() + ")"); // 打印出点poi对象为：(5, 3)
			Console.WriteLine(poi.GetX()); // 打印出点poi对象的x坐标为：5
			Console.WriteLine(poi.GetY()); // 打印出点poi对象的y坐标为：3
		}
	}
	```

=== "PHP"
	```
	<?php
	// 定义一个名为 Point 的类，包含两个私有成员变量：x 和 y
	class Point {
		private $x;
		private $y;

		// 构造函数
		public function __construct($x, $y) {
			$this->x = $x;
			$this->y = $y;
		}

		// 取出一个点对象的x坐标
		public function getX() {
			return $this->x;
		}

		// 取出一个点对象的y坐标
		public function getY() {
			return $this->y;
		}
	}

	// 构建平面中的一个点对象
	$poi = new Point(5, 3); // 构建一个平面的点对象：x坐标=5，y坐标=3
	echo "(" . $poi->getX() . ", " . $poi->getY() . ")\n"; // 打印出点poi对象为：(5, 3)
	echo $poi->getX() . "\n"; // 打印出点poi对象的x坐标为：5
	echo $poi->getY() . "\n"; // 打印出点poi对象的y坐标为：3
	?>
	```

=== "JavaScript"
	```
	// 定义一个名为 Point 的类，包含两个私有成员变量：x 和 y
	class Point {
		constructor(x, y) {
			this.x = x;
			this.y = y;
		}

		// 取出一个点对象的x坐标
		getX() {
			return this.x;
		}

		// 取出一个点对象的y坐标
		getY() {
			return this.y;
		}
	}

	// 构建平面中的一个点对象
	var poi = new Point(5, 3); // 构建一个平面的点对象：x坐标=5，y坐标=3
	console.log("(" + poi.getX() + ", " + poi.getY() + ")"); // 打印出点poi对象为：(5, 3)
	console.log(poi.getX()); // 打印出点poi对象的x坐标为：5
	console.log(poi.getY()); // 打印出点poi对象的y坐标为：3
	```

=== "Go"
	```
	package main

	import "fmt"

	// 定义一个名为 Point 的类，包含两个私有成员变量：x 和 y
	type Point struct {
		x int
		y int
	}

	func main() {
		// 构建平面中的一个点对象
		poi := &Point{x: 5, y: 3} // 构建一个平面的点对象：x坐标=5，y坐标=3
		fmt.Printf("(%d, %d)\n", poi.x, poi.y) // 打印出点poi对象为：(5, 3)
		fmt.Println(poi.x) // 打印出点poi对象的x坐标为：5
		fmt.Println(poi.y) // 打印出点poi对象的y坐标为：3
	}
	```

=== "Swift"
	```
	// 定义一个名为 Point 的类，包含两个私有成员变量：x 和 y
	class Point {
		private var x: Int
		private var y: Int
		
		// 构造函数
		init(x: Int, y: Int) {
			self.x = x
			self.y = y
		}
		
		// 取出一个点对象的x坐标
		func getX() -> Int {
			return x
		}
		
		// 取出一个点对象的y坐标
		func getY() -> Int {
			return y
		}
	}

	// 构建平面中的一个点对象
	let poi = Point(x: 5, y: 3) // 构建一个平面的点对象：x坐标=5，y坐标=3
	print("(\(poi.getX()), \(poi.getY()))") // 打印出点poi对象为：(5, 3)
	print(poi.getX()) // 打印出点poi对象的x坐标为：5
	print(poi.getY()) // 打印出点poi对象的y坐标为：3
	```

=== "Kotlin"
	```
	// 定义一个名为 Point 的数据类，包含两个成员变量：x 和 y
	data class Point(val x: Int, val y: Int)

	fun main() {
		// 构建平面中的一个点对象
		val poi = Point(5, 3) // 构建一个平面的点对象：x坐标=5，y坐标=3
		println("(${poi.x}, ${poi.y})") // 打印出点poi对象为：(5, 3)
		println(poi.x) // 打印出点poi对象的x坐标为：5
		println(poi.y) // 打印出点poi对象的y坐标为：3
	}
	```


