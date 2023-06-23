---
comments: true
title: 5 寄存器机器里的计算
---

# 5 Computing with Register Machines

!!! quote

    My aim is to show that the heavenly machine is not a kind of divine, live being, but a kind of clockwork (and he who believes that a clock has soul attributes the maker’s glory to the work), insofar as nearly all the manifold motions are caused by a most simple and material force, just as all motions of the clock are caused by a single weight.

    —— Johannes Kepler (letter to Herwart von Hohenburg, 1605)

We began this book by studying processes and by describing processes in terms of procedures written in Lisp. To explain the meanings of these procedures, we used a succession of models of evaluation: the substitution model of [Chapter 1], the environment model of [Chapter 3], and the metacircular evaluator of [Chapter 4]. Our examination of the metacircular evaluator, in particular, dispelled much of the mystery of how Lisp-like languages are interpreted. But even the metacircular evaluator leaves important questions unanswered, because it fails to elucidate the mechanisms of control in a Lisp system. For instance, the evaluator does not explain how the evaluation of a subexpression manages to return a value to the expression that uses this value, nor does the evaluator explain how some recursive procedures generate iterative processes (that is, are evaluated using constant space) whereas other recursive procedures generate recursive processes. These questions remain unanswered because the metacircular evaluator is itself a Lisp program and hence inherits the control structure of the underlying Lisp system. In order to provide a more complete description of the control structure of the Lisp evaluator, we must work at a more primitive level than Lisp itself.

In this chapter we will describe processes in terms of the step-by-step operation of a traditional computer. Such a computer, or register machine, sequentially executes instructions that manipulate the contents of a fixed set of storage elements called registers. A typical register-machine instruction applies a primitive operation to the contents of some registers and assigns the result to another register. Our descriptions of processes executed by register machines will look very much like “machine-language” programs for traditional computers. However, instead of focusing on the machine language of any particular computer, we will examine several Lisp procedures and design a specific register machine to execute each procedure. Thus, we will approach our task from the perspective of a hardware architect rather than that of a machine-language computer programmer. In designing register machines, we will develop mechanisms for implementing important programming constructs such as recursion. We will also present a language for describing designs for register machines. In [5.2] we will implement a Lisp program that uses these descriptions to simulate the machines we design.

Most of the primitive operations of our register machines are very simple. For example, an operation might add the numbers fetched from two registers, producing a result to be stored into a third register. Such an operation can be performed by easily described hardware. In order to deal with list structure, however, we will also use the memory operations car, cdr, and cons, which require an elaborate storage-allocation mechanism. In [5.3] we study their implementation in terms of more elementary operations.

In [5.4], after we have accumulated experience formulating simple procedures as register machines, we will design a machine that carries out the algorithm described by the metacircular evaluator of [4.1]. This will fill in the gap in our understanding of how Scheme expressions are interpreted, by providing an explicit model for the mechanisms of control in the evaluator. In [5.5] we will study a simple compiler that translates Scheme programs into sequences of instructions that can be executed directly with the registers and operations of the evaluator register machine.

[Chapter 1]: {{ config.extra.homepage_sicp }}/chapter_1/

[Chapter 3]: {{ config.extra.homepage_sicp }}/chapter_3/

[Chapter 4]: {{ config.extra.homepage_sicp }}/chapter_4/

[5.2]: {{ config.extra.homepage_sicp }}/chapter_5/chapter_5_2/

[5.3]: {{ config.extra.homepage_sicp }}/chapter_5/chapter_5_3/

[5.4]: {{ config.extra.homepage_sicp }}/chapter_5/chapter_5_4/

[4.1]: {{ config.extra.homepage_sicp }}/chapter_4/chapter_4_1/

[5.5]: {{ config.extra.homepage_sicp }}/chapter_5/chapter_5_5/