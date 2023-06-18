---
comments: true
---

# 2.1  Introduction to Data Abstraction
In section [1.1.8], we noted that a procedure used as an element in creating a more complex procedure could be regarded not only as a collection of particular operations but also as a procedural abstraction. That is, the details of how the procedure was implemented could be suppressed, and the particular procedure itself could be replaced by any other procedure with the same overall behavior. In other words, we could make an abstraction that would separate the way the procedure would be used from the details of how the procedure would be implemented in terms of more primitive procedures. The analogous notion for compound data is called data abstraction. Data abstraction is a methodology that enables us to isolate how a compound data object is used from the details of how it is constructed from more primitive data objects.<br>
从[1.1.8]节可以看到，在构造更复杂的过程时可以将一个过程用作其中的元素，这样的过程不但可以看作是一组特定操作，还可以看作一个过程抽象。也就是说，有关过程的实现细节可以被隐蔽起来，这个特定过程完全可以由另一个具有同样整体行为的过程取代。换句话说，我们可以这样造成一个抽象，它将这一过程的使用方式，与该过程究竟如何通过更基本的过程实现的具体细节相互分离。针对复合数据的类似概念被称为数据抽象。数据抽象是一种方法学，它使我们能将一个复合数据对象的使用，与该数据对象怎样由更基本的数据对象构造起来的细节隔离开。

The basic idea of data abstraction is to structure the programs that are to use compound data objects so that they operate on ''abstract data.'' That is, our programs should use data in such a way as to make no assumptions about the data that are not strictly necessary for performing the task at hand. At the same time, a ''concrete'' data representation is defined independent of the programs that use the data. The interface between these two parts of our system will be a set of procedures, called selectors and constructors, that implement the abstract data in terms of the concrete representation. To illustrate this technique, we will consider how to design a set of procedures for manipulating rational numbers.<br>
数据抽象的基本思想，就是设法构造出一些使用复合数据对象的程序，使它们就像是在“抽象数据”上操作一样。也就是说，我们的程序中使用数据的方式应该是这样的，除了完成当前工作所必要的东西之外，它们不对所用数据做任何多余的假设。与此同时，一种“具体”数据表示的定义，也应该与程序中使用数据的方式无关。在我们的系统里，这样两个部分之间的界面将是一组过程，称为选择函数和构造函数，它们在具体表示之上实现抽象的数据。为了展示这一技术，下面我们将考虑怎样设计出一组为操作有理数而用的过程。

[1.1.8]: {{ config.extra.homepage_sicp }}/chapter_1/chapter_1_1/1.1.8/