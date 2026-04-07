六个需要安装的 Skills 及其 GitHub 链接：

Frontend Design

描述：解决 AI 在前端设计中的审美问题，提供更好的排版和设计风格。
GitHub 链接： https://github.com/anthropics/skills/tree/main/skills/frontend-design

如果你经常用Agent生成前端页面、做小工具的UI或者做数据可视化分析，相信我，这个，真的必装。

办公必备四件套

描述：包括 docx、xlsx、pdf、pptx 四个 Skills，能够读取、写入和修改各种格式的文件。
GitHub 链接： https://github.com/anthropics/skills/tree/main/skills

有了它，你的AI就能读取你各种格式的文件了。自带了一整套文档处理流程和代码模板。
word、ppt、excel、PDF全都能读，全都能写，全都能改。
如果你用的是Cowork，这些能力是内置的，开箱即用。

Web Access Skill

描述：结合联网搜索和浏览器操控的 Skill，能够访问非公开的站内信息。
GitHub 链接： https://github.com/eze-is/web-access

少有的，将联网搜索和浏览器操控结合到一起的skill，也是我自己现在默认的联网skill了。
有一个前提条件是需要Chrome更新到最新版。

并且还需要允许远程调试，可以在地址栏输入chrome://inspect/#remote-debugging，进行勾选。

PUA Skill

描述：解决 AI 摆烂的问题，强制 AI 进行更深入的思考和问题解决。
GitHub 链接： https://github.com/tanweai/pua
不太建议开默认模式，在实在解决不了的时候，再手动PUA一下，可能会比较好。

Claude-mem

描述：提供记忆持久化功能，自动记录对话中的关键信息并在新会话中注入相关上下文。
GitHub 链接： https://github.com/thedotmack/claude-mem

它会自动记录你每次对话里的关键信息，压缩存下来，下次开新会话的时候自动注入相关的上下文。

非常简单的说就是，给你的Claude Code装了一个类似于小龙虾那样的长期记忆。

它也自带了一个本地的Web界面，跑在 localhost:37777，你可以直接在浏览器里看它到底记住了什么、什么时候记的，非常的一目了然。

还有一个隐私控制的设计，如果你有些内容不想被记住，比如你的密码、密钥这种隐私数据，加个<private>标签就行，它会自动跳过。

Skill-Creator

描述：帮助用户构建自己的 Skills，封装和沉淀个人需求和经验。
GitHub 链接： https://claude.com/plugins/skill-creator

比如自建一个服务器部署的 Skill

你：「帮我把这个项目部署到眼务器」

Claude 自动执行
◯ 读取服务器规范 → 确认端口和规则
◯ 创建目录 一 你的专属揙离空间
◯ 上传文件 → 自动打包压编传输
◯ 装依赖 ⟶ npm install／pip install
◯ 配置进程守护 → 挂了自动重启
◯ 配置域名＋HTTPS → 自动生效
◯ 登记注册 → 防止端口／域名冲实
◯ 验证上线 → 确认能正常访问才算完

来自卡兹克的推荐

https://mp.weixin.qq.com/s/udSpp7eMqwiRo5yVShRzLw?clicktime=1774836693&enterid=1774836693&scene=90&subscene=236&xtrack=1
