# 推荐我日常高频使用的8个Skills，产出效率翻一倍

最近一个月，Claude Code推出并成为开放标准的Skills生态彻底爆发了。

从Anthropic官方到社区开发者，各种Skills层出不穷，风头甚至超出此前的MCP。

作为最早使用Skills的一批人，我前前后后折腾了不少Skills，最终沉淀下来8个日常高频使用的。今天分享给大家，每个都是我实际在用的，并且是能真正转化为效率和生产力的。

### 1. planning-with-files：加强版plan模式

Claude Code老手应该都有这个体会，200k的上下文空间是真不够用。对话一长，前面的内容就会被遗忘。planning-with-files这个Skill的思路非常巧妙：它把Context Window当成RAM，把文件系统当成磁盘。

安装后，Claude在开始复杂任务前，会自动创建三个Markdown文件：task_plan.md（任务规划）、findings.md（发现记录）、progress.md（进度日志）。每做两步操作就自动保存一次，每次做重要决策前都会重新读一遍计划文件。

对于经常做复杂项目的开发者来说，这个Skill几乎是必装的。skill地址：

https://github.com/OthmanAdi/planning-with-files

### 2. superpowers：SDD的skills版

superpowers是我目前用得最多的Skills集合，没有之一。它不是一个单独的Skill，而是一整套软件开发工作流框架，本质上是规范驱动开发（SDD）的skills版本。

它的核心理念是：不要让AI上来就写代码。先用/superpowers:brainstorm做需求探索和设计，再用/superpowers:write-plan拆分实现计划，最后用/superpowers:execute-plan分批执行。整个过程强制执行TDD（测试驱动开发），先写测试再写代码，写完代码再重构。这个跟planning-with-files部分功能有重叠，但问题不大。

除了核心的三板斧，它还有代码审查、系统化调试、Git Worktree管理等十几个子Skills。而且这些Skills会根据上下文自动触发，不用手动调用。

如果你觉得Claude Code写代码太莽，经常拆东墙补西墙，那superpowers会非常对你胃口。skill地址：

https://github.com/obra/superpowers

### 3. frontend-design：告别AI千篇一律的UI审美

这是Anthropic官方出品的Skill，专门解决一个痛点：AI生成的前端页面长得都一样。清一色的Inter字体、紫色渐变背景、圆角卡片，一眼就知道是Vibe出来的UI。

frontend-design这个Skill会引导Claude做更大胆的设计决策。比如选择独特的字体组合（而不是默认的Arial和Inter），使用更有视觉冲击力的配色方案，根据设计风格匹配对应的实现复杂度（极简风格要求精准的留白和排版，而非简单地少放元素）。

实际效果确实肉眼可见地好了。特别是搭配React + Tailwind使用，生成的页面质感和之前完全不在一个水平线上。

不过要注意，它主要改善的是视觉设计层面，交互逻辑和业务功能还是得自己把关。skill地址：

https://github.com/anthropics/skills

### 4. NotebookLM Skill：让Claude直接查你的知识库

NotebookLM很强大，这个应该没有人否认，我去年开始就把内容整理都交给NotebookLM了。这个skill能让Claude Code直接和Google NotebookLM对话，查询你上传到NotebookLM里的文档，拿到带引用来源的回答。

举个使用场景：你把项目的技术文档、设计规范、API文档全部上传到NotebookLM，然后在Claude Code里写代码的时候，它可以直接去查这些文档，而不是靠自己XJB猜。因为答案全部来自你自己上传的资料，幻觉的概率大大降低。

它还支持自动追问，会主动去挖掘细节信息、边界情况和最佳实践。认证也是持久化的，登录一次就行。skill地址：

https://github.com/PleasePrompto/notebooklm-skill

### 5. Obsidian Skills：Obsidian用户的福音

这个Skill出自kepano之手（Obsidian的创始人Steph Ango），算是Obsidian官方认证了。

它让Claude Code能够直接创建和编辑Obsidian的三种原生文件格式：Obsidian Flavored Markdown、Obsidian Bases和JSON Canvas。放到Obsidian vault的.claude目录下就能用，兼容Claude Code和Codex CLI。

我平时用Obsidian做知识管理和项目笔记，有了这个Skill之后，可以直接在Claude Code里操作Obsidian笔记，比如整理会议记录、生成项目文档、创建Canvas看板等。GitHub上8.7k星，社区认可度非常高。

围绕Obsidian + Claude Code的生态其实已经很丰富了，还有obsidian-claude-code（原生插件）、obsidian-plugin-skill（Obsidian插件开发专用）等一系列工具，感兴趣可以进一步探索。这两个结合到一起真的能干很多事，只是我没有时间一一折腾。

skill地址：

https://github.com/kepano/obsidian-skills

### 6. Remotion Skills：用代码做视频

Remotion是一个用React做视频的框架，简单说就是：视频的每一帧都是一个React组件。而Remotion Skills就是让Claude Code具备这个框架的专业知识。这个我们号之前也写过好几篇文章来描述具体教程。

安装之后，你可以用自然语言描述想要的视频效果，Claude会生成对应的React代码，实时预览，满意了再渲染成MP4。社区里有一些增强版本，还支持TTS语音生成、预置的标题幻灯片、代码块展示、图表动画等组件。

我主要用它做技术演示视频和产品介绍短片。最大的好处是可以精确控制每一个动画细节，而且所有内容都是代码定义的，修改起来比传统视频剪辑方便很多。

使用建议：不要一次描述整个视频，一个composition一个composition地来，迭代优化效果会好很多。

官方文档：  

https://www.remotion.dev/docs/ai/skills

社区增强版：

https://github.com/wshuyi/remotion-video-skill

### 7. Skill Creator：skill制造机

这也是Anthropic官方出品的Skill，专门用来帮你创建新的Skill。

如果你有特定的工作场景想让Claude表现更好，比如特定框架的最佳实践、团队编码规范、特定领域的专业知识，都可以用Skill Creator来快速生成一个自定义Skill。

它会通过问答的方式引导你定义Skill的名称、描述、触发条件、具体指令等，最终生成一个规范的SKILL.md文件。整个过程不需要写代码，只需要回答问题就行。

实际上每个Skill的结构非常简单：一个SKILL.md文件，顶部是YAML元数据（名称和描述），下面是Markdown格式的指令。加载时只消耗约100个token做元数据扫描，激活后也就不到5k token。非常轻量。

对于想入门Skills开发的人来说，用这个Skill来学习是最快的路径。

skills地址：

https://github.com/anthropics/skills

### 8. research-skills：我自己做的科研写作工具包

最后一个是我自己开发的Skills集合，专门面向科研场景。

做这个的初衷是，我平时写医学影像AI方向的综述论文和研究计划，流程比较固定但又很繁琐。于是把这些经验沉淀成了三个Skill：

**Medical Imaging Review** ：医学影像AI综述写作。包含一个结构化的7阶段写作流程，覆盖CCTA、肺部、脑部、心脏、病理、眼底等细分领域，支持Zotero文献管理集成。

**Paper Slide Deck** ：论文自动转PPT。支持从PDF论文中自动检测和提取图片，提供17种视觉风格模板，集成了Nano Banana API做slide生成，导出PPTX和PDF。

**Research Proposal** ：博士研究计划撰写。遵循Nature Reviews风格的学术写作规范，支持中英双语输出，最终产出2000-4000词的研究计划，包含40+参考文献。

如果你也在做学术研究相关的工作，欢迎试用和反馈。

项目地址：https://github.com/luwill/research-skills

*** ** * ** ***

以上就是我目前日常高频使用的8个Claude Code Skills。总结一下适用场景：

* **项目管理：planning-with-files**
* **开发流程：superpowers**
* **前端设计：frontend-design**
* **知识查询：NotebookLM Skill**
* **笔记管理：Obsidian Skills**
* **视频制作：Remotion Skills**
* **Skills开发：Skill Creator**
* **科研写作：research-skills**

Skills的安装方式主要有三种：一是通过/plugin install命令一键安装（适用于已上架marketplace的Skills），二是手动clone到~/.claude/skills/目录。具体安装方式每个Skills的GitHub README里都有说明，还有一种就是通过vercel的npx skill命令来执行安装。

友情提醒：跟MCP一样，Skills宜精不宜多，定期清理不用的Skills。
