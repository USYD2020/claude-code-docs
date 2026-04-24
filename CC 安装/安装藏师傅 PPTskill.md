github.com/op7418/guizang-ppt-skill

📐 横向左右翻页:键盘 ← → / 滚轮 / 触屏滑动 / 底部圆点 / ESC 索引
🎨 5 套主题色预设:墨水经典 / 靛蓝瓷 / 森林墨 / 牛皮纸 / 沙丘
🧩 10 种页面布局:开场封面、章节幕封、数据大字报、左文右图、图片网格、Pipeline、悬念问题、大引用、Before/After 对比、图文混排
📄 单文件 HTML:不需要构建、不需要服务器,浏览器直接打开

https://mp.weixin.qq.com/s/GXjjlxpIJ604HVCCZJkUBA


也可以在 Bloome 这个 Agent 里面用，目前是免费的：https://bloome.im/agent/join/iKXCLtkD?ref=wNL9Ew2G

## 给 AI 的安装 prompt

复制粘贴给你的 Claude Code或其他 AI Agent，它会自动完成安装。装好之后对它说一句"帮我做一份杂志风 PPT"就会触发。
``
帮我安装 guizang-ppt-skill 这个 Claude Code skill。请按下面步骤做:

确保 ~/.claude/skills/ 目录存在(不存在就创建)
执行 git clone https://github.com/op7418/guizang-ppt-skill.git ~/.claude/skills/magazine-web-ppt
验证:ls ~/.claude/skills/magazine-web-ppt/ 应该看到 SKILL.md、assets/、references/ 三项
告诉我安装好了,之后我说"藏师父，做一份杂志风 PPT"之类的话就会触发这个 skill
``
把这段话复制粘贴给 Claude Code / Cursor / 任何有 shell 权限的 AI Agent,它会自动完成安装。

## 触发方式
装好后,Claude Code 会在对话里自动发现并调用这个 skill。触发关键词:

"帮我做一份杂志风 PPT"
"生成一个 horizontal swipe deck"
"editorial magazine style presentation"
"electronic ink 风格演讲 slides"

使用流程
Skill 本身是结构化的 6 步工作流,Claude 会逐步引导:

需求澄清 — 6 问清单:受众、时长、素材、图片、主题色、硬约束
拷贝模板 — assets/template.html → 项目目录,改 <title>,换主题色
填充内容 — 从 10 种 layout 骨架里挑、粘、改文案(先做类名预检 + 主题节奏规划)
自检 — 对照 references/checklist.md,P0 级问题必须全过
预览 — 浏览器直接打开
迭代 — inline style 改字号/高度/间距
详细说明见 SKILL.md。

目录结构
magazine-web-ppt/
├── SKILL.md              ← Skill 主文件:工作流、原则、常见错误
├── README.md             ← 本文件
├── assets/
│   └── template.html     ← 完整可运行的种子 HTML(CSS + WebGL + 翻页 JS 全配好)
└── references/
    ├── components.md     ← 组件手册(字体、色、网格、图标、callout、stat、pipeline)
    ├── layouts.md        ← 10 种页面布局骨架(可直接粘贴)
    ├── themes.md         ← 5 套主题色预设(只能选不能自定义)
    └── checklist.md      ← 质量检查清单(P0 / P1 / P2 / P3 分级)
主题色预设
从 references/themes.md 里选一套——不允许自定义 hex 值,保护美学比给自由更重要。

主题	适合场景
🖋 墨水经典	通用默认、商业发布、不知道选啥
🌊 靛蓝瓷	科技 / 研究 / AI / 技术发布会
🌿 森林墨	自然 / 可持续 / 文化 / 非虚构
🍂 牛皮纸	怀旧 / 人文 / 文学 / 独立杂志
🌙 沙丘	艺术 / 设计 / 创意 / 画廊
切换主题只需替换 template.html 开头 :root{} 里的 6 行变量,其他 CSS 全走 var(--...)。