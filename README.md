# LinkProgramming
链式编程 (1、属性赋值  2、方法调用)

//来段网上搜的介绍
iOS上实现链式编程比较好的框架就是Masonry，通过查看Masonry源码，我们发现，每一个函数返回类型都是一个Block变量，然后Block变量中返回的内容就是当前对象本身。这样来实现通过点调用。
