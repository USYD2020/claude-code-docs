# 发现了 4 个好玩 SKills，已经在 GitHub 上开源了。



**01**

**视频剪辑 Skill**

这个开源项目是一个**视频剪辑 Skill**，叫 videocut-skills。

它能够辅助你完成视频处理工作，比如识别视频中的口误、静音片段以及语气词啥的。

通过简单的指令让 AI 自动处理这些多余的内容，提高剪辑效率。



```
# 克隆到 Claude Code skills 目录 git clone https://github.com/Ceeon/videocut-skills.git  ~/.claude/skills/videocut 
```

**② 安装环境** 

打开 Claude Code，输入 **/videocut:安装** ，AI 会自动安装依赖、下载模型，大概 5GB。

安装完成你就能用下面这些能力处理你的原素材了。

```
开源地址：https://github.com/Ceeon/videocut-skills
```

**02**

**去除 AI 味儿**

这个 Skill 我感觉很多人会用到。

它是专门**消除文本中 AI 生成痕迹的 Skill。**它基于维基百科关于 AI 写作特征的指南，把有 AI 味儿的生成文本改写得更加自然。这个项目是原版 Humanizer 的中文汉化版本。

![图片](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

工具内置了很多检测维度，包括**内容、语言语法、风格以及交流模式**啥的。

识别出 AI 常有的表达方式，并针对性地进行重写。通过模拟人类的写作习惯，让文章的语气更加真实、生动。

```
# 克隆到 Claude Code 的 skills 目录 git clone https://github.com/op7418/Humanizer-zh.git ~/.claude/skills/humanizer-zh 
```

**② 验证安装** 

重启 Claude Code 或重新加载 skills 后，在对话中输入： **/humanizer-zh** 如果安装成功，该技能将被激活。

然后你可以直接输入 /humanizer-zh 指令，再接上你想去除 AI 味儿的文本就行了。

```
开源地址：https://github.com/op7418/Humanizer-zh
```



**03**

**小红书发布 Skills**

这个开源的 Skill 是我从 linux.do 上发现的。

这个 Skill 可以**帮你撰写、制作并发布小红书笔记。**它结合了内容生成与视觉渲染技术，能够根据你设定的主题自动生成符合平台风格的文案。

目前还比较小众，Star 不是很多。

![图片](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

它利用 Playwright 浏览器自动化技术将 Markdown 文本渲染为精美的图片。还支持自定义背景渐变和封面样式，确保生成的图片既美观又具吸引力。

而且还打通了发布环节，可以模拟操作**将制作好的笔记一键发布到小红书。**

![f628aa846c9e7157bde75683184b8d8e](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

系统提供了 Python 和 Node.js 两种脚本方案，看你喜欢吧。

下面是安装部署好使用教程。

```
开源地址：https://github.com/comeonzhj/Auto-Redbook-Skills
```

**04**

**添加 Skill**

这个叫 add-skill 的不是一个具体的 skill 哦。

而是 Vercel Labs 开发的命令行工具，可以**帮你把各种 Skill 安装到你的 Claude Code、Codex、Cursor 里面。**

![图片](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

它能从 GitHub 项目里面直接提取并配置 Skill 文件，支持主流的编程 AI 助手。

它识别仓库中的标准化配置文件来自动完成安装步骤。不需要手动复制粘贴复杂的文件结构，只需一行命令即可完成配置。

![img](https://p.ipic.vip/c01wq4.png)

```
开源地址：https://github.com/vercel-labs/add-skill
```