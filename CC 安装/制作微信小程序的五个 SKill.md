正好最近在开发一个「资产管理 + 人生目标」的小程序，我就借这个真实项目的过程，给大家整理一下不同开发阶段的 skills 组合拳。

##  **阶段一：原型阶段** 

大家都知道，开发的第一个阶段，肯定得先想清楚再动手。

让 CC 帮我头脑风暴一下。

> 调用一下 **brainstorming** 这个 skill。

> npx skills add https://github.com/obra/superpowers --skill brainstorming

生成了超级长的一个回答。但全都要等于全都没有。跟 CC 说：

> 让我做选择题

通过选择题逼自己做决策，产品定位从模糊到清晰只需要几分钟。

而且，像“资源分配博弈”这种选项，反正我是想不到。这就是 brainstorming 的价值，它帮你跳出思维定式。

##  阶段二：UI 阶段

确定完产品方向，先做一个 **playground** 。

用来实验、测试。有效提升效率。

UI 设计用下来对我帮助最大的是 **ui-ux-pro-max。**

> npx skills add https://github.com/nextlevelbuilder/ui-ux-pro-max-skill --skill ui-ux-pro-max

这个 skill 内置了 50 多种样式、97 种配色方案、57 种字体组合、99 条用户体验准则以及涵盖 9 种技术栈的 25 种图表类型。

一开始我也踩了坑。因为上面的对话并没有特别多的涉及审美。第一次出来的样式就很普通。

需要给 AI 足够的设计约束。把我的产品定位翻译成设计语言：

> 这是一个游戏化的人生 RPG 小程序。核心交互是'资源分配'——用户像玩策略游戏一样，在买房、旅行、学习等目标之间分配资金。

> 设计风格要：年轻、有游戏感、但不幼稚。用色要清新，避免传统理财软件那种'严肃的蓝绿色'。参考风格：Monument Valley 的极简几何 + Duolingo 的激励感。"

这段话里就包括了：产品调性（游戏化 RPG）、核心交互（资源分配）、目标用户（年轻人）、参考风格（具体游戏）和要避开的雷区（传统理财软件的严肃感）

这样 AI 才能 get 到你的设计意图。

微调过后，生成效果就是这样啦。现在 idea 的模样是清晰了，但具体怎么做？先做哪个后做哪个？这时候我会

> 召唤 **planning-with-files** 

> npx skills add https://github.com/othmanadi/planning-with-files --skill planning-with-files

这是 Manus-style 的规划方式，会帮你创建 task_plan.md、findings.md、progress.md 三个文件。

亲测建议：小项目别用，大项目必用。

我这个小程序虽然不大，但涉及到云开发、数据库设计、UI 设计、审核上架几个环节，用 planning-with-files 梳理完之后，整个项目的里程碑特别清晰。

而且最爽的是，你可以随时丢给 AI 一句“我现在做到哪了”，它能准确告诉你进度。

这对于我这种间歇性老年痴呆很管用。

##  阶段三：开发阶段 

playground 跑通了，规划也有了，但先别急着 cmd+N 新建文件。

微信小程序的开发有个特点：它既是前端，又不是纯粹的前端。

我还要考虑：

- 微信特有的 API（登录、支付、分享、扫码）
- 云开发还是自建后端？
- 分包加载（小程序有体积限制，不能超过 2MB）
- rpx 适配各种屏幕
- 审核规范（有些功能会上架被拒）

最可怕的是调试成本。

每次改完代码要重新编译，真机测试还要扫码预览。如果没有测试兜底，你就是在裸奔。

所以我这个阶段

> 用 **test-driven-development** 

> npx skills add https://github.com/obra/superpowers --skill test-driven-development

先写测试用例，再写功能代码。

比如核心的“资源分配计算”——用户拖动滑块调整买房/旅行/学习的资金比例，系统要实时计算各目标的完成时间。

这个算法我写了三遍：

- 第一版：简单平均分配
- 第二版：考虑目标优先级权重
- 第三版：加入“资金池冻结”机制（已存的钱不能随意挪用）

因为有测试，每次重构我都能秒级验证对不对，而不是手动输入一堆数据去试。

测试有了，可以开始写小程序代码了？

对，顺便分享一下我在这里摸索出来一个小技巧。

当我直接跟 Claude Code 说：现在根据 playground 的演示，生成真正的小程序代码，前端设计完全按照 playground 来不要自己改。

因为 Playground 是 HTML+CSS+JS，小程序是 WXML+WXSS+JS。第一遍生成的代码，大几率会有 bug。

这时候我 PUA 了一下 AI：

> 你一定要以一个完整成熟的小程序产品的角度去修改代码，不要从简。有什么困难先自己上网搜解决，我相信你有这个能力。

它真的去搜了微信小程序的官方文档，自动修复了几个问题。

做个前期的 demo 还是绰绰有余吧。

##  **阶段四：沉淀阶段** 

项目做得差不多了，但还有最后一个骚操作。

和 Claude Code 的对话先别 exit，来和我一起发这句话：

> 基于我们刚才写小程序的对话，结合 insights 报告给我整理一下我以后可能需要生成的 skills

这就是我们这套组合拳里最后一个 skills。

![img](https://waytoagi.feishu.cn/space/api/box/stream/download/asynccode/?code=NjZiZWNhZWQyYTA4MTcxNTk4NjFiM2Y4YWRkMzQ1M2FfSXlWQVZaVGhGcXd3dWxVU0dOY2FCUGFIcjRmR2hjTG1fVG9rZW46RlliOWJXdUpWbzVHQWx4ZHNPb2N4QkRUbjNmXzE3NzM4ODY1OTk6MTc3Mzg5MDE5OV9WNA)

当然，这里可能生成的就不只是 1 个 skills 了。你可以基于自己的开发习惯，提炼出专属的 skills。

五个 skills 表格总结如下最后说几句。

其实 skills 这东西，真的不是越多越好。

我朋友听完我的推荐，只装了这 5 个，昨天跟我说：“够用了，很清爽。”