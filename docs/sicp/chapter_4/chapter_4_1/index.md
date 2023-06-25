---
comments: true
---

# 4.1 The Metacircular Evaluator
Our evaluator for Lisp will be implemented as a Lisp program. It may seem circular to think about evaluating Lisp programs using an evaluator that is itself implemented in Lisp. However, evaluation is a process, so it is appropriate to describe the evaluation process using Lisp, which, after all, is our tool for describing processes.207 An evaluator that is written in the same language that it evaluates is said to be metacircular.

The metacircular evaluator is essentially a Scheme formulation of the environment model of evaluation described in 3.2. Recall that the model has two basic parts:

To evaluate a combination (a compound expression other than a special form), evaluate the subexpressions and then apply the value of the operator subexpression to the values of the operand subexpressions.
To apply a compound procedure to a set of arguments, evaluate the body of the procedure in a new environment. To construct this environment, extend the environment part of the procedure object by a frame in which the formal parameters of the procedure are bound to the arguments to which the procedure is applied.
These two rules describe the essence of the evaluation process, a basic cycle in which expressions to be evaluated in environments are reduced to procedures to be applied to arguments, which in turn are reduced to new expressions to be evaluated in new environments, and so on, until we get down to symbols, whose values are looked up in the environment, and to primitive procedures, which are applied directly (see Figure 4.1).208 This evaluation cycle will be embodied by the interplay between the two critical procedures in the evaluator, eval and apply, which are described in 4.1.1 (see Figure 4.1).


Figure 4.1: The eval-apply cycle exposes the essence of a computer language.

The implementation of the evaluator will depend upon procedures that define the syntax of the expressions to be evaluated. We will use data abstraction to make the evaluator independent of the representation of the language. For example, rather than committing to a choice that an assignment is to be represented by a list beginning with the symbol set! we use an abstract predicate assignment? to test for an assignment, and we use abstract selectors assignment-variable and assignment-value to access the parts of an assignment. Implementation of expressions will be described in detail in 4.1.2. There are also operations, described in 4.1.3, that specify the representation of procedures and environments. For example, make-procedure constructs compound procedures, lookup-variable-value accesses the values of variables, and apply-primitive-procedure applies a primitive procedure to a given list of arguments.