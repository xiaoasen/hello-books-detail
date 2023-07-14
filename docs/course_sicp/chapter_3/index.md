---
comments: true
---

# 组合和抽象

编写程序就像玩乐高积木，数据对应于积木，数据结构对应着积木的连接方式，算法对应着拼装积木的步骤。组合和抽象是相互的，组合中有抽象，抽象中有组合。组合数据有以下的方式：

- 数值的组合：加、减、乘、除、大于、等于、小于等等

- 字符的组合：长度、比较、连接、子串等等

- 布尔值的组合：与、或、非等等

- 命名和赋值: define、let、set! =等等

- 条件和循环：if...else、while、递归等等

- 函数的组合：函数作为参数、函数作为返回值

- 对象的组合：构造、选择、消息传递等等

- 指针的组合：取地址、取值、加、减、比较等等

## 数值的组合

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
		return 0;
	}
	```	

=== "C++"
	```
	#include <iostream>

	using namespace std;

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
		}
	}
	```

=== "C#"
	```
	using System;

	class Program {
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
		}
	}
	```

=== "PHP"
	```
	<?php
	// 基本运算
	echo 6 + 2 . "\n"; // 加法: +
	echo 6 - 2 . "\n"; // 减法: -
	echo 6 * 2 . "\n"; // 乘法: *
	echo 6 / 2 . "\n"; // 除法: /
	// 比较运算
	echo (6 > 2) . "\n"; // 大于: >
	echo (6 == 2) . "\n"; // 等于: =
	echo (6 < 2) . "\n"; // 小于: <
	?>
	```

=== "JavaScript"
	```
	// 基本运算
	console.log(6 + 2); // 加法: +
	console.log(6 - 2); // 减法: -
	console.log(6 * 2); // 乘法: *
	console.log(6 / 2); // 除法: /
	// 比较运算
	console.log(6 > 2); // 大于: >
	console.log(6 === 2); // 等于: =
	console.log(6 < 2); // 小于: <
	```

=== "Go"
	```
	package main

	import "fmt"

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
	}
	```

=== "Swift"
	```
	// 基本运算
	print(6 + 2) // 加法: +
	print(6 - 2) // 减法: -
	print(6 * 2) // 乘法: *
	print(6 / 2) // 除法: /
	// 比较运算
	print(6 > 2) // 大于: >
	print(6 == 2) // 等于: =
	print(6 < 2) // 小于: <
	```

=== "Kotlin"
	```
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
	}
	```


## 字符的组合

=== "Scheme"
	```
	;定义并初始化字符串str1: "hello"
	(define str1 "hello")

	;定义并初始化字符串str2: " world"
	(define str2 " world")

	;获取字符串str1的长度
	(display (string-length str1)) (newline)

	;比较str1和str2，相同的话则返回#t
	(display (string=? str1 str2)) (newline)

	;获取字符串str1中索引为index的字符(索引从0开始计数)
	(display (string-ref str1 0)) (newline)

	;连接字符串str1和str2
	(display (string-append str1 str2)) (newline)

	;获取字符串str1从start开始到end-1处的子串
	(display (substring str1 0 2)) (newline)
	```

=== "Python"
	```
	# 定义并初始化字符串str1: "hello"
	str1 = "hello"

	# 定义并初始化字符串str2: " world"
	str2 = " world"

	# 获取字符串str1的长度
	print(len(str1))

	# 比较str1和str2，相同的话则返回True
	print(str1 == str2)

	# 获取字符串str1中索引为index的字符(索引从0开始计数)
	print(str1[0])

	# 连接字符串str1和str2
	print(str1 + str2)

	# 获取字符串str1从start开始到end-1处的子串
	print(str1[0:2])
	```

=== "C"
	```
	#include <stdio.h>
	#include <string.h>

	int main() {
		// 定义并初始化字符串str1: "hello"
		char str1[] = "hello";
		// 定义并初始化字符串str2: " world"
		char str2[] = " world";

		// 获取字符串str1的长度
		printf("%zu\n", strlen(str1));

		// 比较str1和str2，相同的话则返回1，不同的话则返回0
		printf("%d\n", strcmp(str1, str2) == 0);

		// 获取字符串str1中索引为index的字符(索引从0开始计数)
		printf("%c\n", str1[0]);

		// 连接字符串str1和str2
		strcat(str1, str2);
		printf("%s\n", str1);

		// 获取字符串str1从start开始到end-1处的子串
		str1[2] = '\0';
		printf("%s\n", str1);

		return 0;
	}
	```

=== "C++"
	```
	#include <iostream>
	#include <string>

	int main() {
		// 定义并初始化字符串str1: "hello"
		std::string str1 = "hello";
		// 定义并初始化字符串str2: " world"
		std::string str2 = " world";

		// 获取字符串str1的长度
		std::cout << str1.length() << std::endl;

		// 比较str1和str2，相同的话则返回true，不同的话则返回false
		std::cout << (str1 == str2) << std::endl;

		// 获取字符串str1中索引为index的字符(索引从0开始计数)
		std::cout << str1[0] << std::endl;

		// 连接字符串str1和str2
		std::cout << str1 + str2 << std::endl;

		// 获取字符串str1从start开始到end-1处的子串
		std::cout << str1.substr(0, 2) << std::endl;

		return 0;
	}
	```

=== "Java"
	```
	public class Main {
		public static void main(String[] args) {
			// 定义并初始化字符串str1: "hello"
			String str1 = "hello";
			// 定义并初始化字符串str2: " world"
			String str2 = " world";

			// 获取字符串str1的长度
			System.out.println(str1.length());

			// 比较str1和str2，相同的话则返回true，不同的话则返回false
			System.out.println(str1.equals(str2));

			// 获取字符串str1中索引为index的字符(索引从0开始计数)
			System.out.println(str1.charAt(0));

			// 连接字符串str1和str2
			System.out.println(str1.concat(str2));

			// 获取字符串str1从start开始到end-1处的子串
			System.out.println(str1.substring(0, 2));
		}
	}
	```

=== "C#"
	```
	using System;

	class Program {
		static void Main(string[] args) {
			// 定义并初始化字符串str1: "hello"
			string str1 = "hello";
			// 定义并初始化字符串str2: " world"
			string str2 = " world";

			// 获取字符串str1的长度
			Console.WriteLine(str1.Length);

			// 比较str1和str2，相同的话则返回true，不同的话则返回false
			Console.WriteLine(str1.Equals(str2));

			// 获取字符串str1中索引为index的字符(索引从0开始计数)
			Console.WriteLine(str1[0]);

			// 连接字符串str1和str2
			Console.WriteLine(str1 + str2);

			// 获取字符串str1从start开始到end-1处的子串
			Console.WriteLine(str1.Substring(0, 2));
		}
	}
	```

=== "PHP"
	```
	<?php
	// 定义并初始化字符串str1: "hello"
	$str1 = "hello";
	// 定义并初始化字符串str2: " world"
	$str2 = " world";

	// 获取字符串str1的长度
	echo strlen($str1) . "\n";

	// 比较str1和str2，相同的话则返回true，不同的话则返回false
	echo ($str1 === $str2) . "\n";

	// 获取字符串str1中索引为index的字符(索引从0开始计数)
	echo $str1[0] . "\n";

	// 连接字符串str1和str2
	echo $str1 . $str2 . "\n";

	// 获取字符串str1从start开始到end-1处的子串
	echo substr($str1, 0, 2) . "\n";
	?>
	```

=== "JavaScript"
	```
	// 定义并初始化字符串str1: "hello"
	var str1 = "hello";
	// 定义并初始化字符串str2: " world"
	var str2 = " world";

	// 获取字符串str1的长度
	console.log(str1.length);

	// 比较str1和str2，相同的话则返回true，不同的话则返回false
	console.log(str1 === str2);

	// 获取字符串str1中索引为index的字符(索引从0开始计数)
	console.log(str1.charAt(0));

	// 连接字符串str1和str2
	console.log(str1 + str2);

	// 获取字符串str1从start开始到end-1处的子串
	console.log(str1.substring(0, 2));
	```

=== "Go"
	```
	package main

	import "fmt"

	func main() {
		// 定义并初始化字符串str1: "hello"
		str1 := "hello"
		// 定义并初始化字符串str2: " world"
		str2 := " world"

		// 获取字符串str1的长度
		fmt.Println(len(str1))

		// 比较str1和str2，相同的话则返回true，不同的话则返回false
		fmt.Println(str1 == str2)

		// 获取字符串str1中索引为index的字符(索引从0开始计数)
		fmt.Println(string(str1[0]))

		// 连接字符串str1和str2
		fmt.Println(str1 + str2)

		// 获取字符串str1从start开始到end-1处的子串
		fmt.Println(str1[0:2])
	}
	```

=== "Swift"
	```
	// 定义并初始化字符串str1: "hello"
	let str1 = "hello"
	// 定义并初始化字符串str2: " world"
	let str2 = " world"

	// 获取字符串str1的长度
	print(str1.count)

	// 比较str1和str2，相同的话则返回true，不同的话则返回false
	print(str1 == str2)

	// 获取字符串str1中索引为index的字符(索引从0开始计数)
	print(str1[str1.startIndex])

	// 连接字符串str1和str2
	print(str1 + str2)

	// 获取字符串str1从start开始到end-1处的子串
	print(str1[str1.index(str1.startIndex, offsetBy: 0)..<str1.index(str1.startIndex, offsetBy: 2)])
	```

=== "Kotlin"
	```
	fun main() {
		// 定义并初始化字符串str1: "hello"
		var str1 = "hello"
		// 定义并初始化字符串str2: " world"
		var str2 = " world"

		// 获取字符串str1的长度
		println(str1.length)

		// 比较str1和str2，相同的话则返回true，不同的话则返回false
		println(str1 == str2)

		// 获取字符串str1中索引为index的字符(索引从0开始计数)
		println(str1[0])

		// 连接字符串str1和str2
		println(str1 + str2)

		// 获取字符串str1从start开始到end-1处的子串
		println(str1.substring(0, 2))
	}
	```

## 布尔值的组合

=== "Scheme"
	```
	; 逻辑运算
	(display (and (> 2 1) (< 3 2)));与: and
	(newline) 
	(display (or (> 2 1) (< 3 2))); 或: or
	(newline)
	(display (not (> 2 1))); 非: not
	(newline)
	```

=== "Python"
	```
	# 逻辑运算
	print((2 > 1) and (3 < 2)) # 与: and
	print((2 > 1) or (3 < 2)) # 或: or
	print(not (2 > 1)) # 非: not
	```

=== "C"
	```
	#include <stdio.h>

	int main() {
		// 逻辑运算
		printf("%d\n", (2 > 1) && (3 < 2)); // 与: and
		printf("%d\n", (2 > 1) || (3 < 2)); // 或: or
		printf("%d\n", !(2 > 1)); // 非: not

		return 0;
	}
	```	

=== "C++"
	```
	#include <iostream>

	using namespace std;

	int main() {
		// 逻辑运算
		cout << ((2 > 1) && (3 < 2)) << endl; // 与: and
		cout << ((2 > 1) || (3 < 2)) << endl; // 或: or
		cout << !(2 > 1) << endl; // 非: not

		return 0;
	}
	```	

=== "Java"
	```
	public class Main {
		
		public static void main(String[] args) {
			// 逻辑运算
			System.out.println((2 > 1) && (3 < 2)); // 与: and
			System.out.println((2 > 1) || (3 < 2)); // 或: or
			System.out.println(!(2 > 1)); // 非: not
		}
	}
	```

=== "C#"
	```
	using System;

	class Program {
		
		static void Main(string[] args) {
			// 逻辑运算
			Console.WriteLine((2 > 1) && (3 < 2)); // 与: and
			Console.WriteLine((2 > 1) || (3 < 2)); // 或: or
			Console.WriteLine(!(2 > 1)); // 非: not
		}
	}
	```

=== "PHP"
	```
	<?php
	// 逻辑运算
	echo ((2 > 1) && (3 < 2)) . "\n"; // 与: and
	echo ((2 > 1) || (3 < 2)) . "\n"; // 或: or
	echo !(2 > 1) . "\n"; // 非: not
	?>
	```

=== "JavaScript"
	```
	// 逻辑运算
	console.log((2 > 1) && (3 < 2)); // 与: and
	console.log((2 > 1) || (3 < 2)); // 或: or
	console.log(!(2 > 1)); // 非: not
	```

=== "Go"
	```
	package main

	import "fmt"

	func main() {
		// 逻辑运算
		fmt.Println((2 > 1) && (3 < 2)) // 与: and
		fmt.Println((2 > 1) || (3 < 2)) // 或: or
		fmt.Println(!(2 > 1)) // 非: not
	}
	```

=== "Swift"
	```
	// 逻辑运算
	print((2 > 1) && (3 < 2)) // 与: and
	print((2 > 1) || (3 < 2)) // 或: or
	print(!(2 > 1)) // 非: not
	```

=== "Kotlin"
	```
	fun main() {
		// 逻辑运算
		println((2 > 1) && (3 < 2)) // 与: and
		println((2 > 1) || (3 < 2)) // 或: or
		println(!(2 > 1)) // 非: not
	}
	```


## 命名和赋值

=== "Scheme"
	```
	;用define命名一个全局变量: radius(半径),并赋值为: 5
	(define radius 5)

	;用define命名一个计算直径的函数: diameter(直径):
	(define diameter
	  (lambda (radius)
		(let ((two 2)) ;用let命名一个局部变量two，并赋值为:2
		 (display two) (newline);显示局部变量two的值 
		 (* two radius) ;计算直径: 2 * radius
		  )))

	;显示diameter(直径)计算函数的值
	(display (diameter 5)) (newline)

	;显示全局变量radius(半径)的值
	(display radius) (newline)

	;这里显示局部变量two的值的话，会出现错误：two: unbound identifier
	;(display two) (newline)
	```

=== "Python"
	```
	# 命名一个全局变量: radius(半径),并赋值为: 5
	radius = 5

	# 命名一个计算直径的函数: diameter(直径):
	def diameter(radius):
		# 命名一个局部变量two，并赋值为:2
		two = 2
		# 显示局部变量two的值
		print(two)
		# 计算直径: 2 * radius
		return two * radius

	# 显示diameter(直径)计算函数的值
	print(diameter(5))

	# 显示全局变量radius(半径)的值
	print(radius)
	# 这里显示局部变量two的值的话，会出现错误：name 'two' is not defined
	#print(two)
	```

=== "C"
	```
	#include <stdio.h>

	// 命名一个全局变量: radius(半径),并赋值为: 5
	int radius = 5;

	// 命名一个计算直径的函数: diameter(直径):
	int diameter(int radius) {
		// 命名一个局部变量two，并赋值为:2
		int two = 2;
		// 显示局部变量two的值
		printf("%d\n", two);
		// 计算直径: 2 * radius
		return two * radius;
	}

	int main() {
		// 显示diameter(直径)计算函数的值
		printf("%d\n", diameter(5));

		// 显示全局变量radius(半径)的值
		printf("%d\n", radius);

		// 这里显示局部变量two的值的话，会出现错误：‘two’ undeclared
		//printf("%d\n", two);

		return 0;
	}
	```

=== "C++"
	```
	#include <iostream>

	using namespace std;

	// 命名一个全局变量: radius(半径),并赋值为: 5
	int radius = 5;

	// 命名一个计算直径的函数: diameter(直径):
	int diameter(int radius) {
		// 命名一个局部变量two，并赋值为:2
		int two = 2;
		// 显示局部变量two的值
		cout << two << endl;
		// 计算直径: 2 * radius
		return two * radius;
	}

	int main() {
		// 显示diameter(直径)计算函数的值
		cout << diameter(5) << endl;

		// 显示全局变量radius(半径)的值
		cout << radius << endl;

		// 这里显示局部变量two的值的话，会出现错误：'two' was not declared in this scope
		//cout << two << endl;

		return 0;
	}
	```

=== "Java"
	```
	public class Program {
		// 命名一个全局变量: radius(半径),并赋值为: 5
		static int radius = 5;

		// 命名一个计算直径的函数: diameter(直径):
		static int diameter(int radius) {
			// 命名一个局部变量two，并赋值为:2
			int two = 2;
			// 显示局部变量two的值
			System.out.println(two);
			// 计算直径: 2 * radius
			return two * radius;
		}

		public static void main(String[] args) {
			// 显示diameter(直径)计算函数的值
			System.out.println(diameter(5));

			// 显示全局变量radius(半径)的值
			System.out.println(radius);

			// 这里显示局部变量two的值的话，会出现错误：cannot find symbol
			// System.out.println(two);
		}
	}
	```

=== "C#"
	```
	using System;

	public class Program {
		// 命名一个全局变量: radius(半径),并赋值为: 5
		static int radius = 5;

		// 命名一个计算直径的函数: diameter(直径):
		static int diameter(int radius) {
			// 命名一个局部变量two，并赋值为:2
			int two = 2;
			// 显示局部变量two的值
			Console.WriteLine(two);
			// 计算直径: 2 * radius
			return two * radius;
		}

		public static void Main() {
			// 显示diameter(直径)计算函数的值
			Console.WriteLine(diameter(5));

			// 显示全局变量radius(半径)的值
			Console.WriteLine(radius);

			// 这里显示局部变量two的值的话，会出现错误：The name 'two' does not exist in the current context
			// Console.WriteLine(two);
		}
	}
	```

=== "PHP"
	```
	<?php
	// 命名一个全局变量: radius(半径),并赋值为: 5
	$radius = 5;

	// 命名一个计算直径的函数: diameter(直径):
	function diameter($radius) {
		// 命名一个局部变量two，并赋值为:2
		$two = 2;
		// 显示局部变量two的值
		echo $two . "\n";
		// 计算直径: 2 * radius
		return $two * $radius;
	}

	// 显示diameter(直径)计算函数的值
	echo diameter(5) . "\n";

	// 显示全局变量radius(半径)的值
	echo $radius . "\n";

	// 这里显示局部变量two的值的话，会出现错误：Undefined variable: two
	// echo $two . "\n";
	?>
	```

=== "JavaScript"
	```
	// 命名一个全局变量: radius(半径),并赋值为: 5
	var radius = 5;

	// 命名一个计算直径的函数: diameter(直径):
	function diameter(radius) {
		// 命名一个局部变量two，并赋值为:2
		let two = 2;
		// 显示局部变量two的值
		console.log(two);
		// 计算直径: 2 * radius
		return two * radius;
	}

	// 显示diameter(直径)计算函数的值
	console.log(diameter(5));

	// 显示全局变量radius(半径)的值
	console.log(radius);

	// 这里显示局部变量two的值的话，会出现错误：Uncaught ReferenceError: two is not defined
	// console.log(two);
	```

=== "Go"
	```
	package main

	import "fmt"

	// 命名一个全局变量: radius(半径),并赋值为: 5
	var radius int = 5

	// 命名一个计算直径的函数: diameter(直径):
	func diameter(radius int) int {
		// 命名一个局部变量two，并赋值为:2
		var two int = 2
		// 显示局部变量two的值
		fmt.Println(two)
		// 计算直径: 2 * radius
		return two * radius
	}

	func main() {
		// 显示diameter(直径)计算函数的值
		fmt.Println(diameter(5))

		// 显示全局变量radius(半径)的值
		fmt.Println(radius)

		// 这里显示局部变量two的值的话，会出现错误：undefined: two
		// fmt.Println(two)
	}
	```

=== "Swift"
	```
	// 命名一个全局变量: radius(半径),并赋值为: 5
	var radius = 5

	// 命名一个计算直径的函数: diameter(直径):
	func diameter(radius: Int) -> Int {
		// 命名一个局部变量two，并赋值为:2
		let two = 2
		// 显示局部变量two的值
		print(two)
		// 计算直径: 2 * radius
		return two * radius
	}

	// 显示diameter(直径)计算函数的值
	print(diameter(radius: 5))

	// 显示全局变量radius(半径)的值
	print(radius)

	// 这里显示局部变量two的值的话，会出现错误：Use of unresolved identifier 'two'
	// print(two)
	```

=== "Kotlin"
	```
	// 命名一个全局变量: radius(半径),并赋值为: 5
	val radius = 5

	// 命名一个计算直径的函数: diameter(直径):
	fun diameter(radius: Int): Int {
		// 命名一个局部变量two，并赋值为:2
		val two = 2
		// 显示局部变量two的值
		println(two)
		// 计算直径: 2 * radius
		return two * radius
	}

	fun main() {
		// 显示diameter(直径)计算函数的值
		println(diameter(5))

		// 显示全局变量radius(半径)的值
		println(radius)

		// 这里显示局部变量two的值的话，会出现错误：Unresolved reference: two
		// println(two)
	}
	```

## 条件和循环
=== "Scheme"
	```
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
		//条件运算
		cout << abs(5) << endl; // 5的绝对值
		//循环运算
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
		// 条件运算
		println(abs(5)) // 5的绝对值
		// 循环运算
		println(factorial_recursion(6)) // 6的阶乘
		println(factorial_while(6)) // 6的阶乘
		println(factorial_for(6)) // 6的阶乘
	}
	```


## 函数的组合

=== "Scheme"
	```
	;; 定义一个高阶函数map，接受一个函数f和一个列表lst，
	;; 对列表中的每个元素应用函数f，返回一个新的列表
	(define (map f lst)
	  (if (null? lst)
		  '()
		  (cons (f (car lst)) (map f (cdr lst)))))

	;; 定义一个函数square，计算一个数的平方
	(define (square x)
	  (* x x))

	;; 使用map函数，将列表中的每个元素平方，
	;; 并返回一个新的列表
	(display (map square '(1 2 3 4 5))) ; 输出 (1 4 9 16 25)
	```

=== "Python"
	```
	# 定义一个高阶函数map，接受一个函数f和一个列表lst，
	# 对列表中的每个元素应用函数f，返回一个新的列表
	def map(f, lst):
		if not lst:
			return []
		else:
			return [f(lst[0])] + map(f, lst[1:])

	# 定义一个函数square，计算一个数的平方
	def square(x):
		return x * x

	# 使用map函数，将列表中的每个元素平方，
	# 并返回一个新的列表
	print(map(square, [1, 2, 3, 4, 5])) # 输出 [1, 4, 9, 16, 25]
	```

=== "C"
	```
	#include <stdio.h>
	#include <stdlib.h>

	// 定义一个高阶函数my_map，接受一个函数f和一个列表lst，
	// 对列表中的每个元素应用函数f，返回一个新的列表
	int* my_map(int (*f)(int), int* lst, int length) {
		int* new_lst = (int*) malloc(sizeof(int) * length);
		for (int i = 0; i < length; i++) {
			new_lst[i] = f(lst[i]);
		}
		return new_lst;
	}

	// 定义一个函数my_square，计算一个数的平方
	int my_square(int x) {
		return x * x;
	}

	int main() {
		// 创建一个列表，表示[1, 2, 3, 4, 5]
		int lst[] = {1, 2, 3, 4, 5};
		int length = sizeof(lst) / sizeof(int);

		// 使用my_map函数，将列表中的每个元素平方，
		// 并返回一个新的列表
		int* new_lst = my_map(my_square, lst, length);

		// 输出新的列表
		printf("[");
		for (int i = 0; i < length; i++) {
			printf("%d ", new_lst[i]);
		}
		printf("]\n");

		free(new_lst);

		return 0;
	}
	```

=== "C++"
	```
	#include <iostream>
	#include <vector>
	#include <functional>

	using namespace std;

	// 定义一个高阶函数map，接受一个函数f和一个vector lst，
	// 对vector中的每个元素应用函数f，返回一个新的vector
	vector<int> map(function<int(int)> f, const vector<int>& lst) {
		vector<int> new_lst;
		for (int i = 0; i < lst.size(); i++) {
			new_lst.push_back(f(lst[i]));
		}
		return new_lst;
	}

	// 定义一个函数square，计算一个数的平方
	int square(int x) {
		return x * x;
	}

	int main() {
		// 创建一个vector，表示[1, 2, 3, 4, 5]
		vector<int> lst = {1, 2, 3, 4, 5};

		// 使用map函数，将vector中的每个元素平方，
		// 并返回一个新的vector
		vector<int> new_lst = map(square, lst);

		// 输出新的vector
		cout << "[";
		for (int i = 0; i < new_lst.size(); i++) {
			cout << new_lst[i] << " ";
		}
		cout << "]" << endl;

		return 0;
	}
	```

=== "Java"
	```
	import java.util.ArrayList;
	import java.util.List;
	import java.util.function.Function;

	public class Program {
		// 定义一个高阶函数map，接受一个函数f和一个列表lst，
		// 对列表中的每个元素应用函数f，返回一个新的列表
		public static <T, R> List<R> map(Function<T, R> f, List<T> lst) {
			List<R> new_lst = new ArrayList<R>();
			for (T x : lst) {
				new_lst.add(f.apply(x));
			}
			return new_lst;
		}

		// 定义一个函数square，计算一个数的平方
		public static int square(int x) {
			return x * x;
		}

		public static void main(String[] args) {
			// 创建一个列表，表示[1, 2, 3, 4, 5]
			List<Integer> lst = new ArrayList<Integer>();
			lst.add(1);
			lst.add(2);
			lst.add(3);
			lst.add(4);
			lst.add(5);

			// 使用map函数，将列表中的每个元素平方，
			// 并返回一个新的列表
			List<Integer> new_lst = map(Program::square, lst);

			// 输出新的列表
			System.out.print("[");
			for (int i = 0; i < new_lst.size(); i++) {
				System.out.print(new_lst.get(i) + " ");
			}
			System.out.println("]");
		}
	}
	```

=== "C#"
	```
	using System;
	using System.Collections.Generic;

	class Program
	{
		// 定义一个高阶函数map，接受一个函数f和一个列表lst，
		// 对列表中的每个元素应用函数f，返回一个新的列表
		static List<int> Map(Func<int, int> f, List<int> lst)
		{
			List<int> new_lst = new List<int>();
			for (int i = 0; i < lst.Count; i++)
			{
				new_lst.Add(f(lst[i]));
			}
			return new_lst;
		}

		// 定义一个函数square，计算一个数的平方
		static int Square(int x)
		{
			return x * x;
		}

		static void Main(string[] args)
		{
			// 创建一个列表，表示[1, 2, 3, 4, 5]
			List<int> lst = new List<int>() { 1, 2, 3, 4, 5 };

			// 使用Map函数，将列表中的每个元素平方，
			// 并返回一个新的列表
			List<int> new_lst = Map(Square, lst);

			// 输出新的列表
			Console.Write("[");
			for (int i = 0; i < new_lst.Count; i++)
			{
				Console.Write(new_lst[i] + " ");
			}
			Console.WriteLine("]");
		}
	}
	```

=== "PHP"
	```
	<?php
	// 定义一个高阶函数map，接受一个函数$f和一个列表$lst，
	// 对列表中的每个元素应用函数$f，返回一个新的列表
	function map($f, $lst) {
		$new_lst = array();
		foreach ($lst as $x) {
			$new_lst[] = $f($x);
		}
		return $new_lst;
	}

	// 定义一个函数square，计算一个数的平方
	function square($x) {
		return $x * $x;
	}

	// 创建一个列表，表示[1, 2, 3, 4, 5]
	$lst = array(1, 2, 3, 4, 5);

	// 使用map函数，将列表中的每个元素平方，
	// 并返回一个新的列表
	$new_lst = map('square', $lst);

	// 输出新的列表
	echo "[";
	foreach ($new_lst as $x) {
		echo "$x ";
	}
	echo "]\n";
	?>
	```

=== "JavaScript"
	```
	// 定义一个高阶函数map，接受一个函数f和一个数组lst，
	// 对数组中的每个元素应用函数f，返回一个新的数组
	function map(f, lst) {
		var new_lst = [];
		for (var i = 0; i < lst.length; i++) {
			new_lst.push(f(lst[i]));
		}
		return new_lst;
	}

	// 定义一个函数square，计算一个数的平方
	function square(x) {
		return x * x;
	}

	// 创建一个数组，表示[1, 2, 3, 4, 5]
	var lst = [1, 2, 3, 4, 5];

	// 使用map函数，将数组中的每个元素平方，
	// 并返回一个新的数组
	var new_lst = map(square, lst);

	// 输出新的数组
	console.log(new_lst);
	```

=== "Go"
	```
	package main

	import "fmt"

	// 定义一个高阶函数Map，接受一个函数f和一个切片lst，
	// 对切片中的每个元素应用函数f，返回一个新的切片
	func Map(f func(int) int, lst []int) []int {
		new_lst := make([]int, len(lst))
		for i, x := range lst {
			new_lst[i] = f(x)
		}
		return new_lst
	}

	// 定义一个函数Square，计算一个数的平方
	func Square(x int) int {
		return x * x
	}

	func main() {
		// 创建一个切片，表示[1, 2, 3, 4, 5]
		lst := []int{1, 2, 3, 4, 5}

		// 使用Map函数，将切片中的每个元素平方，
		// 并返回一个新的切片
		new_lst := Map(Square, lst)

		// 输出新的切片
		fmt.Println(new_lst)
	}
	```

=== "Swift"
	```
	// 定义一个高阶函数map，接受一个函数f和一个数组lst，
	// 对数组中的每个元素应用函数f，返回一个新的数组
	func map(_ f: (Int) -> Int, _ lst: [Int]) -> [Int] {
		var new_lst = [Int]()
		for x in lst {
			new_lst.append(f(x))
		}
		return new_lst
	}

	// 定义一个函数square，计算一个数的平方
	func square(_ x: Int) -> Int {
		return x * x
	}

	// 创建一个数组，表示[1, 2, 3, 4, 5]
	let lst = [1, 2, 3, 4, 5]

	// 使用map函数，将数组中的每个元素平方，
	// 并返回一个新的数组
	let new_lst = map(square, lst)

	// 输出新的数组
	print(new_lst)
	```

=== "Kotlin"
	```
	// 定义一个高阶函数map，接受一个函数f和一个列表lst，
	// 对列表中的每个元素应用函数f，返回一个新的列表
	fun map(f: (Int) -> Int, lst: List<Int>): List<Int> {
		val new_lst = mutableListOf<Int>()
		for (x in lst) {
			new_lst.add(f(x))
		}
		return new_lst
	}

	// 定义一个函数square，计算一个数的平方
	fun square(x: Int): Int {
		return x * x
	}

	fun main() {
		// 创建一个列表，表示[1, 2, 3, 4, 5]
		val lst = listOf(1, 2, 3, 4, 5)

		// 使用map函数，将列表中的每个元素平方，
		// 并返回一个新的列表
		val new_lst = map(::square, lst)

		// 输出新的列表
		println(new_lst)
	}
	```

## 对象的组合

=== "Scheme"
	```
	; 构建一个平面中的点：(x · y)
	(define (make-vector x y) (cons x y))
	; x坐标
	(define (xcor v) (car v))
	; y坐标
	(define (ycor v) (cdr v))

	; 构建一条平面中的线段: (p · q)
	(define (make-seg p q) (cons p q))
	; 起点
	(define (seg-start s) (car s))
	; 终点
	(define (seg-end s) (cdr s))

	;求线段的中点
	(define (midpoint s)
	  (let ((a (seg-start s)) ;起点a
			(b (seg-end s)))  ;终点b
		(make-vector ;用点a和点b的x坐标和y坐标的平均值构建一个新点
		 (average (xcor a) (xcor b)) ;点a和点b的x坐标平均值
		 (average (ycor a) (ycor b))))) ;点a和点b的y坐标平均值

	;求平均值函数average
	(define (average x y)
	  (/ (+ x y) 2))

	;测试
	(define p (make-vector 3 5)) ;构建一个点p: 
	(define q (make-vector 7 11)) ;构建一个点q: 
	(define s (make-seg p q)) ;用点p和点q构建一条线段s
	(define mid (midpoint s)) ;计算线段s的中点

	(display p) (newline); 输出点p: (3 · 5)
	(display q) (newline); 输出点q: (7 . 11)
	(display s) (newline); 输出线段s: ((3 . 5) 7 . 11)
	(display mid) (newline); 输出中点mid: (5 . 8)
	```

=== "Python"
	```
	# 构建一个平面中的点：(x · y)
	def make_vector(x, y):
		return (x, y)

	# x坐标
	def xcor(v):
		return v[0]

	# y坐标
	def ycor(v):
		return v[1]

	# 构建一条平面中的线段: (p · q)
	def make_seg(p, q):
		return (p, q)

	# 起点
	def seg_start(s):
		return s[0]

	# 终点
	def seg_end(s):
		return s[1]

	# 求线段的中点
	def midpoint(s):
		a = seg_start(s)  # 起点a
		b = seg_end(s)  # 终点b
		# 用点a和点b的x坐标和y坐标的平均值构建一个新点
		return make_vector((average(xcor(a), xcor(b))),
				(average(ycor(a), ycor(b))))

	# 求平均值函数average
	def average(x, y):
		return (x + y) / 2

	# 测试
	p = make_vector(3, 5)  # 构建一个点p
	q = make_vector(7, 11)  # 构建一个点q
	s = make_seg(p, q)  # 用点p和点q构建一条线段s
	mid = midpoint(s)  # 计算线段s的中点

	print(p)  # 输出点p: (3, 5)
	print(q)  # 输出点q: (7, 11)
	print(s)  # 输出线段s: ((3, 5), (7, 11))
	print(mid)  # 输出中点mid: (5.0, 8.0)
	```

=== "C"
	```
	#include <stdio.h>
	#include <stdlib.h>

	// 定义一个结构体，表示平面中的点
	typedef struct {
		double x;
		double y;
	} Point;

	// 定义一个结构体，表示平面中的线段
	typedef struct {
		Point p;
		Point q;
	} Segment;

	// 求线段的中点
	Point midpoint(Segment s) {
		// 用点s.p和点s.q的x坐标和y坐标的平均值构建一个新点
		return (Point) { (s.p.x + s.q.x) / 2, (s.p.y + s.q.y) / 2 };
	}

	int main() {
		// 创建一个点p和点q，用它们构建一条线段s
		Point p = { 3.0, 5.0 };
		Point q = { 7.0, 11.0 };
		Segment s = { p, q };

		// 计算线段s的中点
		Point mid = midpoint(s);

		// 输出点、线段和中点
		printf("(%.1f · %.1f)\n", p.x, p.y); // 输出点p: (3.0 · 5.0)
		printf("(%.1f · %.1f)\n", q.x, q.y); // 输出点q: (7.0 · 11.0)
		printf("((%.1f · %.1f) (%.1f · %.1f))\n", p.x, p.y, q.x, q.y); // 输出线段s: ((3.0 · 5.0) (7.0 · 11.0))
		printf("(%.1f · %.1f)\n", mid.x, mid.y); // 输出中点mid: (5.0 · 8.0)

		return 0;
	}
	```

=== "C++"
	```
	#include <iostream>
	#include <iomanip>

	using namespace std;

	// 定义一个类，表示平面中的点
	class Point {
	public:
		double x;
		double y;

		// 构造函数
		Point(double x=0, double y=0) {
			this->x = x;
			this->y = y;
		}
	};

	// 定义一个类，表示平面中的线段
	class Segment {
	public:
		Point p;
		Point q;

		// 构造函数
		Segment(Point p=Point(), Point q=Point()) {
			this->p = p;
			this->q = q;
		}

		// 求线段的中点
		Point midpoint() {
			// 用点p和点q的x坐标和y坐标的平均值构建一个新点
			return Point((p.x + q.x) / 2, (p.y + q.y) / 2);
		}
	};

	int main() {
		// 创建一个点p和点q，用它们构建一条线段s
		Point p(3.0, 5.0);
		Point q(7.0, 11.0);
		Segment s(p, q);

		// 计算线段s的中点
		Point mid = s.midpoint();

		// 输出点、线段和中点
		cout << fixed << setprecision(1);
		cout << "(" << p.x << " · " << p.y << ")" << endl; // 输出点p: (3.0 · 5.0)
		cout << "(" << q.x << " · " << q.y << ")" << endl; // 输出点q: (7.0 · 11.0)
		cout << "(( " << p.x << " · " << p.y << ") (" << q.x << " · " << q.y << "))" << endl; // 输出线段s: ((3.0 · 5.0) (7.0 · 11.0))
		cout << "(" << mid.x << " · " << mid.y << ")" << endl; // 输出中点mid: (5.0 · 8.0)

		return 0;
	}
	```

=== "Java"
	```
	import java.text.DecimalFormat;

	// 定义一个类，表示平面中的点
	class Point {
		double x;
		double y;

		// 构造函数
		Point(double x, double y) {
			this.x = x;
			this.y = y;
		}
	}

	// 定义一个类，表示平面中的线段
	class Segment {
		Point p;
		Point q;

		// 构造函数
		Segment(Point p, Point q) {
			this.p = p;
			this.q = q;
		}

		// 求线段的中点
		Point midpoint() {
			// 用点p和点q的x坐标和y坐标的平均值构建一个新点
			return new Point((p.x + q.x) / 2, (p.y + q.y) / 2);
		}
	}

	public class Program {
		public static void main(String[] args) {
			// 创建一个点p和点q，用它们构建一条线段s
			Point p = new Point(3.0, 5.0);
			Point q = new Point(7.0, 11.0);
			Segment s = new Segment(p, q);

			// 计算线段s的中点
			Point mid = s.midpoint();

			// 输出点、线段和中点
			DecimalFormat df = new DecimalFormat("0.#");
			System.out.println("(" + df.format(p.x) + " · " + df.format(p.y) + ")"); // 输出点p: (3.0 · 5.0)
			System.out.println("(" + df.format(q.x) + " · " + df.format(q.y) + ")"); // 输出点q: (7.0 · 11.0)
			System.out.println("((" + df.format(p.x) + " · " + df.format(p.y) + ") (" + df.format(q.x) + " · " + df.format(q.y) + "))"); // 输出线段s: ((3.0 · 5.0) (7.0 · 11.0))
			System.out.println("(" + df.format(mid.x) + " · " + df.format(mid.y) + ")"); // 输出中点mid: (5.0 · 8.0)
		}
	}
	```

=== "C#"
	```
	using System;

	// 定义一个类，表示平面中的点
	class Point {
		public double x;
		public double y;

		// 构造函数
		public Point(double x, double y) {
			this.x = x;
			this.y = y;
		}
	}

	// 定义一个类，表示平面中的线段
	class Segment {
		public Point p;
		public Point q;

		// 构造函数
		public Segment(Point p, Point q) {
			this.p = p;
			this.q = q;
		}

		// 求线段的中点
		public Point midpoint() {
			// 用点p和点q的x坐标和y坐标的平均值构建一个新点
			return new Point((p.x + q.x) / 2, (p.y + q.y) / 2);
		}
	}

	class MainClass {
		public static void Main() {
			// 创建一个点p和点q，用它们构建一条线段s
			Point p = new Point(3.0, 5.0);
			Point q = new Point(7.0, 11.0);
			Segment s = new Segment(p, q);

			// 计算线段s的中点
			Point mid = s.midpoint();

			// 输出点、线段和中点
			Console.WriteLine("({0:F1} · {1:F1})", p.x, p.y); // 输出点p: (3.0 · 5.0)
			Console.WriteLine("({0:F1} · {1:F1})", q.x, q.y); // 输出点q: (7.0 · 11.0)
			Console.WriteLine("(( {0:F1} · {1:F1}) ({2:F1} · {3:F1}))", p.x, p.y, q.x, q.y); // 输出线段s: ((3.0 · 5.0) (7.0 · 11.0))
			Console.WriteLine("({0:F1} · {1:F1})", mid.x, mid.y); // 输出中点mid: (5.0 · 8.0)
		}
	}
	```

=== "PHP"
	```
	<?php
	// 定义一个类，表示平面中的点
	class Point {
		public $x;
		public $y;

		// 构造函数
		public function __construct($x, $y) {
			$this->x = $x;
			$this->y = $y;
		}
	}

	// 定义一个类，表示平面中的线段
	class Segment {
		public $p;
		public $q;

		// 构造函数
		public function __construct($p, $q) {
			$this->p = $p;
			$this->q = $q;
		}

		// 求线段的中点
		public function midpoint() {
			// 用点p和点q的x坐标和y坐标的平均值构建一个新点
			return new Point(($this->p->x + $this->q->x) / 2, ($this->p->y + $this->q->y) / 2);
		}
	}

	// 创建一个点p和点q，用它们构建一条线段s
	$p = new Point(3.0, 5.0);
	$q = new Point(7.0, 11.0);
	$s = new Segment($p, $q);

	// 计算线段s的中点
	$mid = $s->midpoint();

	// 输出点、线段和中点
	echo "(" . number_format($p->x, 1) . " · " . number_format($p->y, 1) . ")" . PHP_EOL; // 输出点p: (3.0 · 5.0)
	echo "(" . number_format($q->x, 1) . " · " . number_format($q->y, 1) . ")" . PHP_EOL; // 输出点q: (7.0 · 11.0)
	echo "((" . number_format($p->x, 1) . " · " . number_format($p->y, 1) . ") (" . number_format($q->x, 1) . " · " . number_format($q->y, 1) . "))" . PHP_EOL; // 输出线段s: ((3.0 · 5.0) (7.0 · 11.0))
	echo "(" . number_format($mid->x, 1) . " · " . number_format($mid->y, 1) . ")" . PHP_EOL; // 输出中点mid: (5.0 · 8.0)
	?>
	```

=== "JavaScript"
	```
	// 定义一个类，表示平面中的点
	class Point {
		constructor(x, y) {
			this.x = x;
			this.y = y;
		}
	}

	// 定义一个类，表示平面中的线段
	class Segment {
		constructor(p, q) {
			this.p = p;
			this.q = q;
		}

		// 求线段的中点
		midpoint() {
			// 用点p和点q的x坐标和y坐标的平均值构建一个新点
			return new Point((this.p.x + this.q.x) / 2, (this.p.y + this.q.y) / 2);
		}
	}

	// 创建一个点p和点q，用它们构建一条线段s
	const p = new Point(3.0, 5.0);
	const q = new Point(7.0, 11.0);
	const s = new Segment(p, q);

	// 计算线段s的中点
	const mid = s.midpoint();

	// 输出点、线段和中点
	console.log(`(${p.x.toFixed(1)} · ${p.y.toFixed(1)})`); // 输出点p: (3.0 · 5.0)
	console.log(`(${q.x.toFixed(1)} · ${q.y.toFixed(1)})`); // 输出点q: (7.0 · 11.0)
	console.log(`(( ${p.x.toFixed(1)} · ${p.y.toFixed(1)}) (${q.x.toFixed(1)} · ${q.y.toFixed(1)}))`); // 输出线段s: ((3.0 · 5.0) (7.0 · 11.0))
	console.log(`(${mid.x.toFixed(1)} · ${mid.y.toFixed(1)})`); // 输出中点mid: (5.0 · 8.0)
	```

=== "Go"
	```
	package main

	import "fmt"

	// 定义一个结构体，表示平面中的点
	type Point struct {
		x float64
		y float64
	}

	// 定义一个结构体，表示平面中的线段
	type Segment struct {
		p Point
		q Point
	}

	// 求线段的中点
	func (s Segment) midpoint() Point {
		// 用点p和点q的x坐标和y坐标的平均值构建一个新点
		return Point{(s.p.x + s.q.x) / 2, (s.p.y + s.q.y) / 2}
	}

	func main() {
		// 创建一个点p和点q，用它们构建一条线段s
		p := Point{3.0, 5.0}
		q := Point{7.0, 11.0}
		s := Segment{p, q}

		// 计算线段s的中点
		mid := s.midpoint()

		// 输出点、线段和中点
		fmt.Printf("(%0.1f · %0.1f)\n", p.x, p.y)                               // 输出点p: (3.0 · 5.0)
		fmt.Printf("(%0.1f · %0.1f)\n", q.x, q.y)                               // 输出点q: (7.0 · 11.0)
		fmt.Printf("(( %0.1f · %0.1f) ( %0.1f · %0.1f))\n", p.x, p.y, q.x, q.y) // 输出线段s: ((3.0 · 5.0) (7.0 · 11.0))
		fmt.Printf("(%0.1f · %0.1f)\n", mid.x, mid.y)                           // 输出中点mid: (5.0 · 8.0)
	}
	```

=== "Swift"
	```
	// 定义一个类，表示平面中的点
	class Point {
		var x: Double
		var y: Double

		init(x: Double, y: Double) {
			self.x = x
			self.y = y
		}
	}

	// 定义一个类，表示平面中的线段
	class Segment {
		var p: Point
		var q: Point

		init(p: Point, q: Point) {
			self.p = p
			self.q = q
		}

		// 求线段的中点
		func midpoint() -> Point {
			// 用点p和点q的x坐标和y坐标的平均值构建一个新点
			return Point(x: (p.x + q.x) / 2, y: (p.y + q.y) / 2)
		}
	}

	// 创建一个点p和点q，用它们构建一条线段s
	let p = Point(x: 3.0, y: 5.0)
	let q = Point(x: 7.0, y: 11.0)
	let s = Segment(p: p, q: q)

	// 计算线段s的中点
	let mid = s.midpoint()

	// 输出点、线段和中点
	print("(\(p.x), \(p.y))")  // 输出点p: (3.0 · 5.0)
	print("(\(q.x), \(q.y))")  // 输出点q: (7.0 · 11.0)
	print("((\(p.x), \(p.y)), (\(q.x), \(q.y)))")  // 输出线段s: ((3.0 · 5.0), (7.0 · 11.0))
	print("(\(mid.x), \(mid.y))")  // 输出中点mid: (5.0 · 8.0)
	```

=== "Kotlin"
	```
	// 定义一个数据类，表示平面中的点
	data class Point(var x: Double, var y: Double)

	// 定义一个数据类，表示平面中的线段
	data class Segment(var p: Point, var q: Point) {

		// 求线段的中点
		fun midpoint(): Point {
			// 用点p和点q的x坐标和y坐标的平均值构建一个新点
			return Point((p.x + q.x) / 2, (p.y + q.y) / 2)
		}
	}

	// 创建一个点p和点q，用它们构建一条线段s
	val p = Point(3.0, 5.0)
	val q = Point(7.0, 11.0)
	val s = Segment(p, q)

	// 计算线段s的中点
	val mid = s.midpoint()

	fun main() {
		// 输出点、线段和中点
		println("(${p.x}, ${p.y})") // 输出点p: (3.0 · 5.0)
		println("(${q.x}, ${q.y})") // 输出点q: (7.0 · 11.0)
		println("((${q.x}, ${q.y}), (${q.x}, ${q.y})")// 输出线段s: ((3.0 · 5.0), (7.0 · 11.0))
		println("(${mid.x}, ${mid.y})")// 输出中点mid: (5.0 · 8.0)
	}

	```

## 指针的组合

=== "Scheme"
	```
	; 定义并初始化一个向量mVector
	(define mVector (vector 1 2 3) )
	(display mVector) (newline)

	; 获取向量mVector的索引为2的元素
	(display (vector-ref mVector 2)) (newline)

	; 将向量mVector的索引为2的元素修改为8
	(vector-set! mVector 2 8)
	(display mVector) (newline)

	```

=== "Python"
	```
	# 定义并初始化一个向量mVector
	mVector = [1, 2, 3]
	print(mVector)

	# 获取向量mVector的索引为2的元素
	print(mVector[2])

	# 将向量mVector的索引为2的元素修改为8
	mVector[2] = 8
	print(mVector)
	```

=== "C"
	```
	#include <stdio.h>

	int main() {
		// 定义并初始化一个向量mVector
		int mVector[] = {1, 2, 3};
		int n = sizeof(mVector) / sizeof(mVector[0]);
		int *p = mVector;
		for (int i = 0; i < n; i++) {
			printf("%d ", *(p + i));
		}
		printf("\n");

		// 获取向量mVector的索引为2的元素
		printf("%d\n", *(p + 2));

		// 将向量mVector的索引为2的元素修改为8
		*(p + 2) = 8;
		for (int i = 0; i < n; i++) {
			printf("%d ", *(p + i));
		}
		printf("\n");

		return 0;
	}
	```

=== "C++"
	```
	#include <iostream>
	#include <vector>

	using namespace std;

	int main() {
		// 定义并初始化一个向量mVector
		vector<int> mVector {1, 2, 3};
		for (auto x : mVector) {
			cout << x << " ";
		}
		cout << endl;

		// 获取向量mVector的索引为2的元素
		cout << mVector[2] << endl;

		// 将向量mVector的索引为2的元素修改为8
		mVector[2] = 8;
		for (auto x : mVector) {
			cout << x << " ";
		}
		cout << endl;

		return 0;
	}
	```

=== "Java"
	```
	import java.util.Arrays;

	public class Main {
		public static void main(String[] args) {
			// 定义并初始化一个向量mVector
			int[] mVector = {1, 2, 3};
			System.out.println(Arrays.toString(mVector));

			// 获取向量mVector的索引为2的元素
			System.out.println(mVector[2]);

			// 将向量mVector的索引为2的元素修改为8
			mVector[2] = 8;
			System.out.println(Arrays.toString(mVector));
		}
	}
	```

=== "C#"
	```
	using System;

	class MainClass {
		static void Main() {
			// 定义并初始化一个向量mVector
			int[] mVector = {1, 2, 3};
			Console.WriteLine(string.Join(" ", mVector));

			// 获取向量mVector的索引为2的元素
			Console.WriteLine(mVector[2]);

			// 将向量mVector的索引为2的元素修改为8
			mVector[2] = 8;
			Console.WriteLine(string.Join(" ", mVector));
		}
	}
	```

=== "PHP"
	```
	<?php
	// 定义并初始化一个向量mVector
	$mVector = array(1, 2, 3);
	echo implode(' ', $mVector) . "\n";

	// 获取向量mVector的索引为2的元素
	echo $mVector[2] . "\n";

	// 将向量mVector的索引为2的元素修改为8
	$mVector[2] = 8;
	echo implode(' ', $mVector) . "\n";
	?>
	```

=== "JavaScript"
	```
	// 定义并初始化一个向量mVector
	let mVector = [1, 2, 3];
	console.log(mVector.join(' '));

	// 获取向量mVector的索引为2的元素
	console.log(mVector[2]);

	// 将向量mVector的索引为2的元素修改为8
	mVector[2] = 8;
	console.log(mVector.join(' '));
	```

=== "Go"
	```
	package main

	import "fmt"

	func main() {
		// 定义并初始化一个向量mVector
		mVector := []int{1, 2, 3}
		fmt.Println(mVector)

		// 获取向量mVector的索引为2的元素
		fmt.Println(mVector[2])

		// 将向量mVector的索引为2的元素修改为8
		mVector[2] = 8
		fmt.Println(mVector)
	}
	```

=== "Swift"
	```
	// 定义并初始化一个向量mVector
	var mVector = [1, 2, 3]
	print(mVector)

	// 获取向量mVector的索引为2的元素
	print(mVector[2])

	// 将向量mVector的索引为2的元素修改为8
	mVector[2] = 8
	print(mVector)
	```

=== "Kotlin"
	```
	fun main() {
		// 定义并初始化一个向量mVector
		val mVector = listOf(1, 2, 3)
		println(mVector)

		// 获取向量mVector的索引为2的元素
		println(mVector[2])

		// 将向量mVector的索引为2的元素修改为8
		val modifiedVector = mVector.toMutableList()
		modifiedVector[2] = 8
		println(modifiedVector)
	}
	```