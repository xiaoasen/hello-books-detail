---
comments: true
title: 用高阶函数做抽象
---

# 1.3  Formulating Abstractions with Higher-Order Procedures(用高阶函数做抽象)

We have seen that procedures are, in effect, abstractions that describe compound operations on numbers independent of the particular numbers. For example, when we<br>
我们已经看到，在作用上，过程也就是一类抽象，它们描述了一些对于数的复合操作，但又并不依赖于特定的数。例如，在定义：

```
(define (cube x) (* x x x))
```

we are not talking about the cube of a particular number, but rather about a method for obtaining the cube of any number. Of course we could get along without ever defining this procedure, by always writing expressions such as<br>
时，我们讨论的并不是某个特定数值的立方，而是对任意的数得到其立方的方法。当然，我们也完全可以不去定义这一过程，而总是写出下面这样的表达式：

```
(* 3 3 3)
(* x x x)
(* y y y)
```        

and never mentioning `cube` explicitly. This would place us at a serious disadvantage, forcing us to work always at the level of the particular operations that happen to be primitives in the language (multiplication, in this case) rather than in terms of higher-level operations. Our programs would be able to compute cubes, but our language would lack the ability to express the concept of cubing. One of the things we should demand from a powerful programming language is the ability to build abstractions by assigning names to common patterns and then to work in terms of the abstractions directly. Procedures provide this ability. This is why all but the most primitive programming languages include mechanisms for defining procedures.<br>
并不明确地提出cube。但是，这样做将把自己置于一个非常糟糕的境地，迫使我们永远在语言恰好提供了的那些特定基本操作(例如这里的乘法)的层面上工作，而不能基于更高级的操作去工作。我们写出的程序也能计算立方，但是所用的语言却不能表述立方这一概念。人们对功能强大的程序设计语言有一个必然要求，就是能为公共的模式命名，建立抽象，而后直接在抽象的层次上工作。过程提供了这种能力，这也是为什么除最简单的程序语言外，其他语言都包含定义过程的机制的原因。

Yet even in numerical processing we will be severely limited in our ability to create abstractions if we are restricted to procedures whose parameters must be numbers. Often the same programming pattern will be used with a number of different procedures. To express such patterns as concepts, we will need to construct procedures that can accept procedures as arguments or return procedures as values. Procedures that manipulate procedures are called higher-order procedures. This section shows how higher-order procedures can serve as powerful abstraction mechanisms, vastly increasing the expressive power of our language.<br>
然而，即使在数值计算过程中，如果将过程限制为只能以数作为参数，那也会严重地限制我们建立抽象的能力。经常有一些同样的程序设计模式能用于若干不同的过程。为了把这种模式描述为相应的概念，我们就需要构造出这样的过程，让它们以过程作为参数，或者以过程作为返回值。这类能操作过程的过程称为高阶过程。本节将展示高阶过程如何能成为强有力的抽象机制，极大地增强语言的表述能力。