---
comments: true
---

# 5.4 The Explicit-Control Evaluator
In [5.1] we saw how to transform simple Scheme programs into descriptions of register machines. We will now perform this transformation on a more complex program, the metacircular evaluator of [4.1.1]–[4.1.4], which shows how the behavior of a Scheme interpreter can be described in terms of the procedures `eval` and `apply`. The explicit-control evaluator that we develop in this section shows how the underlying procedure-calling and argument-passing mechanisms used in the evaluation process can be described in terms of operations on registers and stacks. In addition, the explicit-control evaluator can serve as an implementation of a Scheme interpreter, written in a language that is very similar to the native machine language of conventional computers. The evaluator can be executed by the register-machine simulator of [5.2]. Alternatively, it can be used as a starting point for building a machine-language implementation of a Scheme evaluator, or even a special-purpose machine for evaluating Scheme expressions. Figure [5.16](#Figure5.16) shows such a hardware implementation: a silicon chip that acts as an evaluator for Scheme. The chip designers started with the data-path and controller specifications for a register machine similar to the evaluator described in this section and used design automation programs to construct the integrated-circuit layout.[^1]

<div id="Figure5.16" markdown>
<figure markdown>
  ![](../assets/Fig5.16.svg)
  <figcaption markdown>
  Figure 5.16: A silicon-chip implementation of an evaluator for Scheme.
  </figcaption>
</figure>
</div>

## Registers and operations
In designing the explicit-control evaluator, we must specify the operations to be used in our register machine. We described the metacircular evaluator in terms of abstract syntax, using procedures such as `quoted?` and `make-procedure`. In implementing the register machine, we could expand these procedures into sequences of elementary list-structure memory operations, and implement these operations on our register machine. However, this would make our evaluator very long, obscuring the basic structure with details. To clarify the presentation, we will include as primitive operations of the register machine the syntax procedures given in [4.1.2] and the procedures for representing environments and other run-time data given in sections [4.1.3] and [4.1.4]. In order to completely specify an evaluator that could be programmed in a low-level machine language or implemented in hardware, we would replace these operations by more elementary operations, using the list-structure implementation we described in [5.3].

Our Scheme evaluator register machine includes a stack and seven registers: `exp`, `env`, `val`, `continue`, `proc`, `argl`, and `unev`. `Exp` is used to hold the expression to be evaluated, and env contains the environment in which the evaluation is to be performed. At the end of an evaluation, `val` contains the value obtained by evaluating the expression in the designated environment. The continue register is used to implement recursion, as explained in [5.1.4]. (The evaluator needs to call itself recursively, since evaluating an expression requires evaluating its subexpressions.) The registers `proc`, `argl`, and `unev` are used in evaluating combinations.

We will not provide a data-path diagram to show how the registers and operations of the evaluator are connected, nor will we give the complete list of machine operations. These are implicit in the evaluator’s controller, which will be presented in detail.

[^1]:
    See Batali et al. 1982 for more information on the chip and the method by which it was designed.

[5.1]: {{ config.extra.homepage_sicp }}/chapter_5/chapter_5_1/

[4.1.1]: {{ config.extra.homepage_sicp }}/chapter_4/chapter_4_1/4.1.1

[4.1.4]: {{ config.extra.homepage_sicp }}/chapter_4/chapter_4_1/4.1.4

[5.2]: {{ config.extra.homepage_sicp }}/chapter_5/chapter_5_2/

[4.1.2]: {{ config.extra.homepage_sicp }}/chapter_4/chapter_4_1/4.1.2

[4.1.3]: {{ config.extra.homepage_sicp }}/chapter_4/chapter_4_1/4.1.2

[5.3]: {{ config.extra.homepage_sicp }}/chapter_5/chapter_5_3/

[5.1.4]: {{ config.extra.homepage_sicp }}/chapter_5/chapter_5_1/5.1.4