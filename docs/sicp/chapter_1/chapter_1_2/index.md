---
comments: true
title: 过程与它们所产生的计算
---

# 1.2 Procedures and the Processes They Generate（过程与它们所产生的计算）

We have now considered the elements of programming: We have used primitive arithmetic operations, we have combined these operations, and we have abstracted these composite operations by defining them as compound procedures. But that is not enough to enable us to say that we know how to program. Our situation is analogous to that of someone who has learned the rules for how the pieces move in chess but knows nothing of typical openings, tactics, or strategy. Like the novice chess player, we don’t yet know the common patterns of usage in the domain. We lack the knowledge of which moves are worth making (which procedures are worth defining). We lack the experience to predict the consequences of making a move (executing a procedure).<br>
我们现在已经考虑了程序设计中的一些要素：使用过许多基本的算术操作，对这种操作进行组合，通过定义各种复合过程，对复合操作进行抽象。但是，即使是知道了这些，我们还不能说自己已经理解了如何去编程序。我们现在的情况就像是在学下象棋的过程中的一个阶段，此时已经知道了移动棋子的各种规则，但却还不知道典型的开局、战术和策略。就像初学象棋的人们那样，我们还不知道编程领域中各种有用的常见模式，缺少有关各种棋步的价值(值得定义哪些过程)的知识，缺少对所走棋步的各种后果(执行一个过程的效果)做出预期的经验。

The ability to visualize the consequences of the actions under consideration is crucial to becoming an expert programmer, just as it is in any synthetic, creative activity. In becoming an expert photographer, for example, one must learn how to look at a scene and know how dark each region will appear on a print for each possible choice of exposure and development conditions. Only then can one reason backward, planning framing, lighting, exposure, and development to obtain the desired effects. So it is with programming, where we are planning the course of action to be taken by a process and where we control the process by means of a program. To become experts, we must learn to visualize the processes generated by various types of procedures. Only after we have developed such a skill can we learn to reliably construct programs that exhibit the desired behavior.<br>
能够看清楚所考虑的动作的后果的能力，对于成为程序设计专家是至关重要的，就像这种能力在所有综合性的创造性的活动中的作用一样。要成为一个专业摄影家，必须学习如何去考察各种景象，知道在各种可能的暴光和显影选择条件下，景象中各个区域在影像中的明暗程度。只有在此之后，人才能去做反向推理，对取得所需效果应该做的取景、亮度、曝光 和显影等等做出规划。在程序设计里也一样，在这里，我们需要对计算过程中各种动作的进行情况做出规划，用一个程序去控制这一过程的进展。要想成为专家，我们就需要学会去看清各种不同种类的过程会产生什么样的计算过程。只有在掌握了这种技能之后，我们才能学会如何去构造出可靠的程序，使之能够表现出所需要的行为。

A procedure is a pattern for the local evolution of a computational process. It specifies how each stage of the process is built upon the previous stage. We would like to be able to make statements about the overall, or global, behavior of a process whose local evolution has been specified by a procedure. This is very difficult to do in general, but we can at least try to describe some typical patterns of process evolution.<br>
一个过程也就是一种模式，它描述了一个计算过程的局部演化方式，描述了这一计算过程中的每个步骤是怎样基于前面的步骤建立起来的。在有了一个刻画计算过程的过程描述之后，我们当然希望能做出一些有关这一计算过程的整体或全局行为的论断。 一般来说这是非常困难的，但我们至少还是可以试着去描述过程演化的一些典型模式。


In this section we will examine some common “shapes” for processes generated by simple procedures. We will also investigate the rates at which these processes consume the important computational resources of time and space. The procedures we will consider are very simple. Their role is like that played by test patterns in photography: as oversimplified prototypical patterns, rather than practical examples in their own right.<br>
在这一节里，我们将考察由一些简单过程所产生的计算过程的“形状”,还将研究这些计算过程消耗各种重要计算资源(时间和空间)的速率。这里将要考察的过程都是非常简单的，它们所扮演的角色就像是摄影术中的测试模式，是作为极度简化的摄影模式，而其自身并不是很实际的例子。