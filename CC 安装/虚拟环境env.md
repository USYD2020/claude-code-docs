# 如何让Claude Code /Codex/Gemini 同时协同群殴一个项目？

现在你在同一个项目里，同时启动十个 Claude Code 或者Codex。

Schaltwerk 的核心逻辑只有三个字：并发流。

你可能会问，这么多 AI 同时改一个项目，代码岂不是要炸？

还真不会！因为它底层用了Git Worktree。

Git Worktree不熟悉也完全没关系，Schaltwerk是一个完备的图形界面，他做了非常良好的封装，你根本不需要了解任何的原理，直接点两下就可以使用。

每一个 AI Agent 启动时，Schaltwerk 都会为它瞬间创建一个独立的工作树，一个完全隔离的平行宇宙。

Agent A 在修 Bug。  

Agent B 在写新功能。  

Agent C 在重构文档。

它们互不干扰，文件系统完全隔离。

现在的开发流程变成了这样：

打开终端，一键安装，下面是Mac的一键安装，Windows用户请观看文章后提供仓库链接。

    brew install --cask 2mawi2/tap/schaltwerk




https://link.bytenote.net/5MHVcn

快来把你的终端变成一条 24 小时运转的流水线。

[GLM4.7发布，较上一代提升明显！](https://mp.weixin.qq.com/s?__biz=MzIzMzQyMzUzNw==&mid=2247511218&idx=1&sn=acb3d7f9fe92c606dc8955df778d969b&scene=21#wechat_redirect)  

[我发现Gemini + NotebookLM就是个人知识库的最终解！](https://mp.weixin.qq.com/s?__biz=MzIzMzQyMzUzNw==&mid=2247511194&idx=1&sn=492b587cc8ff1e0d689facc1b26753cc&scene=21#wechat_redirect)  

[A社自家的Claude Skills 仓库都有哪些宝贝技能？](https://mp.weixin.qq.com/s?__biz=MzIzMzQyMzUzNw==&mid=2247511164&idx=1&sn=345a980e8dfa31de7c4ecb53eeaa156d&scene=21#wechat_redirect)  

[Claude Code 2.0.74更新，越来越IDE了！](https://mp.weixin.qq.com/s?__biz=MzIzMzQyMzUzNw==&mid=2247511159&idx=1&sn=d27a36318b5dad7f8bf69221b4375dc9&scene=21#wechat_redirect)  

[如何把Claude Agent Skills打包部署成一个应用？](https://mp.weixin.qq.com/s?__biz=MzIzMzQyMzUzNw==&mid=2247511147&idx=1&sn=f5651efe87e14d9d7981aed36c6f3cb3&payreadticket=HNZkPsbPpABcpmTXeKYxtl6zWMhkDB8LQuvg_GER0HHfacJf7wbmlrLXIWdpmQR8tKzFFfY&scene=21#wechat_redirect)  

![](https://image.cubox.pro/cardImg/4lb2ds2m4duzs3iawd3zcomh4295lpfw5o214rp4go7j9nj3y5?imageMogr2/quality/90/ignore-error/1)

**字节笔记本**

专注于AI Agent，AI编程经验和案例分享以及全栈开发

[Read in Cubox](https://cubox.pro/my/card?id=7403021422001391264)
