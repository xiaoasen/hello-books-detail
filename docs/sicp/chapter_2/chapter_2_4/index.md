---
comments: true
title: 抽象数据的多重表示
---

# 2.4  Multiple Representations for Abstract Data(抽象数据的多重表示)
We have introduced data abstraction, a methodology for structuring systems in such a way that much of a program can be specified independent of the choices involved in implementing the data objects that the program manipulates. For example, we saw in section [2.1.1] how to separate the task of designing a program that uses rational numbers from the task of implementing rational numbers in terms of the computer language's primitive mechanisms for constructing compound data. The key idea was to erect an abstraction barrier -- in this case, the selectors and constructors for rational numbers (`make-rat`, `numer`, `denom`) -- that isolates the way rational numbers are used from their underlying representation in terms of list structure. A similar abstraction barrier isolates the details of the procedures that perform rational arithmetic (`add-rat`, `sub-rat`, `mul-rat`, and `div-rat`) from the ''higher-level'' procedures that use rational numbers. The resulting program has the structure shown in figure [2.1].<br />
我们已经介绍过数据抽象，这是一种构造系统的方法学，采用这种方法，将使一个程序中的大部分描述能与这一程序所操作的数据对象的具体表示的选择无关。举例来说，在[2.1.1]节里，我们看到如何将一个使用有理数的程序的设计与有理数的实现工作相互分离，具体实现中采用的是计算机语言所提供的构造复合数据的基本机制。这里的关键性思想就是构筑起一道抽象屏障——对于上面情况，也就是有理数的选择函数和构造函数(`make-rat`,`numer`,`denom`)—它能将有理数的使用方式与其借助于表结构的具体表示形式隔离开。与此类似的抽象屏障，也把执行有理数算术的过程(`add-rat`,`sub-rat`,`mul-rat`和`div-rat`)与使用有理数的“高层”过程隔离开。这样做出的程序所具有的结构如图[2-1]所示。

These data-abstraction barriers are powerful tools for controlling complexity. By isolating the underlying representations of data objects, we can divide the task of designing a large program into smaller tasks that can be performed separately. But this kind of data abstraction is not yet powerful enough, because it may not always make sense to speak of ''the underlying representation'' for a data object.<br />
数据抽象屏障是控制复杂性的强有力工具。通过对数据对象基础表示的屏蔽，我们就可以将设计一个大程序的任务，分割为一组可以分别处理的较小任务。但是，这种类型的数据抽象还不够强大有力，因为在这里说数据对象的“基础表示”并不一定总有意义。

For one thing, there might be more than one useful representation for a data object, and we might like to design systems that can deal with multiple representations. To take a simple example, complex numbers may be represented in two almost equivalent ways: in rectangular form (real and imaginary parts) and in polar form (magnitude and angle). Sometimes rectangular form is more appropriate and sometimes polar form is more appropriate. Indeed, it is perfectly plausible to imagine a system in which complex numbers are represented in both ways, and in which the procedures for manipulating complex numbers work with either representation.<br />
从一个角度看，对于一个数据对象也可能存在多种有用的表示方式，而且我们也可能希望所设计的系统能处理多种表示形式。举一个简单的例子，复数就可以表示为两种几乎等价的形式：直角坐标形式(实部和虚部)和极坐标形式(模和幅角)。有时采用直角坐标形式更合适，有时极坐标形式更方便。的确，我们完全可能设想一个系统，其中的复数同时采用了两种表示形式，而其中的过程可以对具有任意表示形式的复数工作。

More importantly, programming systems are often designed by many people working over extended periods of time, subject to requirements that change over time. In such an environment, it is simply not possible for everyone to agree in advance on choices of data representation. So in addition to the data-abstraction barriers that isolate representation from use, we need abstraction barriers that isolate different design choices from each other and permit different choices to coexist in a single program. Furthermore, since large programs are often created by combining pre-existing modules that were designed in isolation, we need conventions that permit programmers to incorporate modules into larger systems additively, that is, without having to redesign or reimplement these modules.<br />
更重要的是，一个系统的程序设计常常是由许多人通过一个相当长时期的工作完成的，系统的需求也在随着时间而不断变化。在这样一种环境里，要求每个人都在数据表示的选择上达成一致是根本就不可能的事情。因此，除了需要将表示与使用相隔离的数据抽象屏障之外，我们还需要有抽象屏障去隔离互不相同的设计选择，以便允许不同的设计选择在同一个程序里共存。进一步说，由于大型程序常常是通过组合起一些现存模块构造起来的，而这些模板又是独立设计的，我们也需要一些方法，使程序员可能逐步地将许多模块结合成一个大型系统，而不必去重新设计或者重新实现这些模块。

In this section, we will learn how to cope with data that may be represented in different ways by different parts of a program. This requires constructing generic procedures -- procedures that can operate on data that may be represented in more than one way. Our main technique for building generic procedures will be to work in terms of data objects that have type tags, that is, data objects that include explicit information about how they are to be processed. We will also discuss data-directed programming, a powerful and convenient implementation strategy for additively assembling systems with generic operations.<br />
在这一节里，我们将学习如何去处理数据，使它们可能在一个程序的不同部分中采用不同的表示方式。这就需要我们去构造通用型过程——也就是那种可以在不止一种数据表示上操作的过程。这里构造通用型过程所采用的主要技术，是让它们在带有类型标志的数据对象上工作。也就是说，让这些数据对象包含着它们应该如何处理的明确信息。我们还要讨论数据导向的程序设计，这是一种用于构造采用了通用型操作的系统有力而且方便的技术。

We begin with the simple complex-number example. We will see how type tags and data-directed style enable us to design separate rectangular and polar representations for complex numbers while maintaining the notion of an abstract ''complex-number'' data object. We will accomplish this by defining arithmetic procedures for complex numbers (`add-complex`, `sub-complex`, `mul-complex`, and `div-complex`) in terms of generic selectors that access parts of a complex number independent of how the number is represented. The resulting complex-number system, as shown in figure [2.19], contains two different kinds of abstraction barriers. The ''horizontal'' abstraction barriers play the same role as the ones in figure [2.1]. They isolate ''higher-level'' operations from ''lower-level'' representations. In addition, there is a ''vertical'' barrier that gives us the ability to separately design and install alternative representations.<br />
我们将从简单的复数实例开始，看看如何采用类型标志和数据导向的风格，为复数分别设计出直角坐标表示和极坐标表示，而又维持一种抽象的“复数”数据对象的概念。做到这一点的方式就是定义基于通用型选择函数定义复数的算术运算(`add-complex`、`sub-complex`、`mul-complex`和`div-complex`),使这些选择函数能访问一个复数的各个部分，无论复数采用的是什么表示方式。作为结果的复数系统如图[2-19]所示，其中包含两种不同类型的抽象屏障，“水平”抽象屏障扮演的角色与图[2-1]中的相同，它们将“高层”操作与“低层”表示隔离开。此外，还存在着一道“垂直”屏障，它使我们能够隔离不同的设计，并且还能够安装其他的表示方式。

<div id="Figure2.19" markdown>

<figure markdown>
  ![](../assets/Fig2.19.svg)
  <figcaption>Figure 2.19:  Data-abstraction barriers in the complex-number system.<br />
  图2-19 复数系统中的数据抽象屏障
  </figcaption>
</figure>
</div>

In section [2.5] we will show how to use type tags and data-directed style to develop a generic arithmetic package. This provides procedures (`add`, `mul`, and so on) that can be used to manipulate all sorts of ''numbers'' and can be easily extended when a new kind of number is needed. In section [2.5.3], we'll show how to use generic arithmetic in a system that performs symbolic algebra.<br />
在[2.5]节里，我们将说明如何利用类型标志和数据导向的风格去开发一个通用型算术包，其中提供的过程(`add`,`mul`等等)可以用于操作任何种类的“数”,在需要另一类新的数时也很容易进行扩充。在[2.5.3]节里，我们还要展示如何在执行符号代数的系统里使用通用型算术功能。

[2.1.1]: {{ config.extra.homepage_sicp }}/chapter_2/chapter_2_1/2.1.1/

[2.1]: {{ config.extra.homepage_sicp }}/chapter_2/chapter_2_1/2.1.2/#Figure2.1

[2.19]: {{ config.extra.homepage_sicp }}/chapter_2/chapter_2_4/#Figure2.19

[2.5]: {{ config.extra.homepage_sicp }}/chapter_2/chapter_2_5/

[2.5.3]: {{ config.extra.homepage_sicp }}/chapter_2/chapter_2_5/2.5.3/
