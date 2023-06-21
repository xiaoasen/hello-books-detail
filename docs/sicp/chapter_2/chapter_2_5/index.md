---
comments: true
title: 带有通用型操作的系统
---

# 2.5  Systems with Generic Operations(带有通用型操作的系统)

In the previous section, we saw how to design systems in which data objects can be represented in more than one way. The key idea is to link the code that specifies the data operations to the several representations by means of generic interface procedures. Now we will see how to use this same idea not only to define operations that are generic over different representations but also to define operations that are generic over different kinds of arguments. We have already seen several different packages of arithmetic operations: the primitive arithmetic (`+, -, *, /`) built into our language, the rational-number arithmetic (`add-rat, sub-rat, mul-rat, div-rat`) of section [2.1.1], and the complex-number arithmetic that we implemented in section [2.4.3]. We will now use data-directed techniques to construct a package of arithmetic operations that incorporates all the arithmetic packages we have already constructed.<br />
在前一节里，我们看到了如何去设计一个系统，使其中的数据对象可以以多于一种方式表示。这里的关键思想就是通过通用型界面过程，将描述数据操作的代码连接到几种不同表示上。现在我们将看到如何使用同样的思想，不但定义出能够在不同表示上的通用操作，还能定义针对不同参数种类的通用型操作。我们已经看到过几个不同的算术运算包：语言内部的基本算术(`+,-,*,/`),[2.1.1]节的有理数算术(`add-rat`,`sub-rat`,`mul-rat`,`div-rat`),以及[2.4.3]节里实现的复数算术。现在我们要使用数据导向技术构造起一个算术运算包，将前面已经构造出的所有算术包都结合进去。

Figure [2.23](#Figure2.23) shows the structure of the system we shall build. Notice the abstraction barriers. From the perspective of someone using ''numbers,'' there is a single procedure `add` that operates on whatever numbers are supplied. `Add` is part of a generic interface that allows the separate ordinary-arithmetic, rational-arithmetic, and complex-arithmetic packages to be accessed uniformly by programs that use numbers. Any individual arithmetic package (such as the complex package) may itself be accessed through generic procedures (such as `add-complex`) that combine packages designed for different representations (such as rectangular and polar). Moreover, the structure of the system is additive, so that one can design the individual arithmetic packages separately and combine them to produce a generic arithmetic system.<br />
图2-23展示了我们将要构造的系统的结构。请注意其中的各抽象屏障。从某些使用“数值”的人的观点看，在这里只存在一个过程add,无论提供给它的数是什么。add是通用型界面的一部分，这一界面将使那些使用数的程序能以一种统一的方式，访问相互分离的常规算术、有理数算术和复数算术程序包。任何独立的算术程序包(例如复数包)本身也可能通过通用型过程(例如add-complex)访问，它也可能由针对不同表示形式设计的包(直角坐标表示和极坐标表示)组合而成。进一步说，这一系统具有可加性，这样，人们还可以设计出其他独立的算术包，并将其组合到这一通用型的算术系统中。

<div id="Figure2.23" markdown>

<figure markdown>
  ![](../assets/Fig2.23.svg)
  <figcaption>
  Figure 2.23:  Generic arithmetic system.<br />
  图2-23通用型算术系统
  </figcaption>
</figure>
</div>


[2.1.1]: {{ config.extra.homepage_sicp }}/chapter_2/chapter_2_1/2.1.1/

[2.4.3]: {{ config.extra.homepage_sicp }}/chapter_2/chapter_2_4/2.4.3/