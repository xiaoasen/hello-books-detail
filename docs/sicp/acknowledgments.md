---
comments: true
---

我们希望感谢许多在这本书和这一教学计划的开发中帮助过我们的人们。

可以把这门课看做是课程“6.231”的后继者。“6.231”是20世纪60年代后期由Jack
Wozencraft和Arthur Evans,Jr.在MIT 教授的有关程序设计语言学和lambda演算的一门美妙课程。

我们由Robert Fano那里受惠良多。是他组织了MIT 电子工程和计算机科学的教学计划， 强调工程设计的原理。他领着我们开始了这一事业，并为此写出了第一批问题注记。本书就是从那里演化出来的。

我们试图去教授的大部分程序设计风格和艺术都是与Guy Lewis Steele Jr.一起开发的，他 与Gerald Jay Sussman在Scheme 语言的初始开发阶段合作工作。此外， David Turner、Peter Henderson、Dan Friedman、David Wise和Will Clinger也教给我们许多函数式程序设计社团所掌握的技术，它们出现在本书的许多地方。

Joel Moses教我们如何考虑大型系统的构造。他在Macsyma 符号计算系统上的经验中得到 的真知灼见是，应该避免控制中的复杂性，将精力集中到数据的组织上，以反映所模拟世界
里的真实结构。

这里的许多有关程序设计及其在我们的智力活动中位置的认识是Marvin  Minsky和 Seymour Papert提出的。从他们那里我们理解了，计算是一种探索各种思想的表达方式的手段， 如果不这样做，这些思想将会因为太复杂而无法精确地处理。他们更强调说，学生编写和修改程序的能力可以成为一种威力强大的工具，使这种探索变成一种自然的活动。

我们也完全同意Alan Perlis的看法，程序设计有着许多乐趣，我们应该认真地支持程序设 计的趣味性。这种趣味性部分来源于观看大师们的工作。我们非常幸运曾经在Bill Gosper和Richard Greenblatt手下学习程序设计。

很难列出所有曾对这一教学计划的开发做出过贡献的人们。我们衷心感谢在过去15年里与 我们一起工作过，并在此科目上付出时间和心血的所有教师、答疑老师和辅导员们，特别是 Bill Siebert 、Albert Meyer 、Joe Stoy 、Randy Davis 、Louis Braida 、Eric Grimson 、Rod Brooks, Lynn Stein和Peter Szolovits。 我们想特别向Franklyn Turbak (现在在Wellesley) 在教学上的特 殊贡献表示谢意，他在本科生指导方面的工作为我们的努力设定了一个标准。我们还要感谢 Jerry Saltzer和Jim Miller帮助我们克服并发性中的难点， Peter Szolovits和David McAllester对于第4章里非确定性求值讨论的贡献。

许多人在他们自己的大学里讲授本书时付出了极大努力，其中与我们密切合作的有Technion 的Jacob Katzenelson、Irvine加州大学的Hardy Mayer、 牛津大学的Joe Stoy、 普度大学的Elisha Sacks以及挪威科技大学的Jan Komorowski。 我们特别为那些在其他大学改制这一课程，并由 此获得重要教学奖的同行们感到骄傲，包括耶鲁大学的Kenneth Yip、 加州大学伯克利分校的Brian Harvey和康乃尔大学的Dan Huttenlocher。

Al Moyé安排我们到惠普公司为工程师教授这一课程，并为这些课程制作了录像带。我们感谢有那些才干的教师特别是Jim Miller、Bill Siebert和Mike Eisenberg-—他们设计了结合这些录像带的继续教育课程，并在全世界的许多大学和企业讲授。

其他国家的许多教育工作者也在翻译本书的第1版方面做了许多工作。 Michel Briand、 Pierre Chamard和André Pic做出了法文版， Susanne Daniels-Herold做了德文版， Fumio Motoyoshi做了日文版。

要列举出所有为我们用于教学的Scheme 系统做出过贡献的人是非常困难的。除了Guy  Steele之外，主要的专家还包括Chris Hanson、Joe Bowbeer、Jim Miller、Guillermo Rozas和  Stephen Adams。 在这项工作中付出许多时间的还有Richard Stallman、Alan Bawden、Kent Pitman 、Jon Taft 、Neil Mayle 、John Lamping 、Gwyn Osnos 、Tracy Larrabee 、George Carrette 、 Soma Chaudhuri 、Bill  Chiarchiaro 、Steven Kirsch 、Leigh Klotz 、Wayne Noss 、Todd  Cass、 Patrick O'Donnell 、Kevin Theobald 、Daniel Weise 、Kenneth Sinclair 、Anthony Courtemanche、Henry M.Wu、Andrew Berlin和Ruth Shyu。

除了MIT 实现之外，我们还应该感谢那些在IEEE  Scheme标准方面工作的人们，包括 William Clinger和Jonathan Rees, 他们编写了R⁴RS; 以及Chris Haynes、David Bartley、Chris Hanson和Jim Miller, 他们撰写了IEEE标准。

Dan Friedman多年以来一直是Scheme 社团的领袖。这一社团的工作范围已经从语言设计 问题，扩展到围绕着重要的教育创新问题，例如基于Schemer's Inc.的EdScheme 的高中教学计划，以及由Mike Eisenberg和由Brian Harvey和Matthew Wright撰写的绝妙著作。

我们还要感谢那些为本教材的成书做出贡献的人们，特别是MIT 出版社的Terry Ehling, Larry Cohen和Paul Bethge。Ella Mazel为本书找到了最美妙的封面图画。对于第2版，我们要 特别感谢Bernard和Ella Mazel对本书设计的帮助，以及David Jones作为TEX 专家的非凡能力。 我们还要感谢下面的读者，他们对于这个新书稿提出了深刻的意见： Jacob Katzenelson, Hardy Mayer、Jim Miller, 特别是Brian Harvey, 他对于本书所做的也就像Julie对于Harvey的著作Simply Scheme所做的那样。

最后我们还想对资助组织表示感谢，它们多年来一直支持这项工作的进行。包括来自惠 普公司的支持(由Ira Goldstein和Joel Birnbaum促成);还有来自DARPA  的支持(得到了Bob Kahn的帮助)。