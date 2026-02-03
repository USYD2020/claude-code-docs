# 发现了 4 个好玩 SKills，已经在 GitHub 上开源了。


01

**视频剪辑 Skill**

这个开源项目是一个视频剪辑 Skill，叫 videocut-skills。

它能够辅助你完成视频处理工作，比如识别视频中的口误、静音片段以及语气词啥的。

通过简单的指令让 AI 自动处理这些多余的内容，提高剪辑效率。

这个 Skill 集成了多种自动化功能，比如使用 Whisper 模型生成字幕，并支持通过词典进行纠错。

它利用 FFmpeg 进行底层的视频剪辑操作，确保了处理速度和质量。智能体还具备自我更新的能力，可以根据用户的使用习惯不断优化剪辑规则。

对于需要频繁制作口播类视频的创作者来说，这个工具提供了一套完整的工作流。

从环境安装到最终成片，只需在对话框中输入相应命令即可完成复杂的剪辑任务。

还挺有意思的。

如何使用

① 下载 Skills

    # 克隆到 Claude Code skills 目录 git clone https://github.com/Ceeon/videocut-skills.git  ~/.claude/skills/videocut 


② 安装环境

打开 Claude Code，输入 /videocut:安装 ，AI 会自动安装依赖、下载模型，大概 5GB。

安装完成你就能用下面这些能力处理你的原素材了。

    开源地址：https://github.com/Ceeon/videocut-skills


02

**去除 AI 味儿**

这个 Skill 我感觉很多人会用到。

它是专门消除文本中 AI 生成痕迹的 Skill。它基于维基百科关于 AI 写作特征的指南，把有 AI 味儿的生成文本改写得更加自然。这个项目是原版 Humanizer 的中文汉化版本。


工具内置了很多检测维度，包括内容、语言语法、风格以及交流模式啥的。

识别出 AI 常有的表达方式，并针对性地进行重写。通过模拟人类的写作习惯，让文章的语气更加真实、生动。

如何使用

①克隆项目

    # 克隆到 Claude Code 的 skills 目录 git clone https://github.com/op7418/Humanizer-zh.git ~/.claude/skills/humanizer-zh 


② 验证安装

重启 Claude Code 或重新加载 skills 后，在对话中输入： /humanizer-zh 如果安装成功，该技能将被激活。

然后你可以直接输入 /humanizer-zh 指令，再接上你想去除 AI 味儿的文本就行了。

    开源地址：https://github.com/op7418/Humanizer-zh


03

**小红书发布 Skills**

这个开源的 Skill 是我从 linux.do 上发现的。  

这个 Skill 可以帮你撰写、制作并发布小红书笔记。它结合了内容生成与视觉渲染技术，能够根据你设定的主题自动生成符合平台风格的文案。

目前还比较小众，Star 不是很多。

它利用 Playwright 浏览器自动化技术将 Markdown 文本渲染为精美的图片。还支持自定义背景渐变和封面样式，确保生成的图片既美观又具吸引力。

而且还打通了发布环节，可以模拟操作将制作好的笔记一键发布到小红书。

系统提供了 Python 和 Node.js 两种脚本方案，看你喜欢吧。

下面是安装部署好使用教程。

    开源地址：https://github.com/comeonzhj/Auto-Redbook-Skills


04

**添加 Skill**

这个叫 add-skill 的不是一个具体的 skill 哦。

而是 Vercel Labs 开发的命令行工具，可以帮你把各种 Skill 安装到你的 Claude Code、Codex、Cursor 里面。

它能从 GitHub 项目里面直接提取并配置 Skill 文件，支持主流的编程 AI 助手。

它识别仓库中的标准化配置文件来自动完成安装步骤。不需要手动复制粘贴复杂的文件结构，只需一行命令即可完成配置。

    开源地址：https://github.com/vercel-labs/add-skill

