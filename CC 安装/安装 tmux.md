安装 tmux

在 macOS 上，使用 Homebrew 安装：

brew install tmux

tmux 允许在一个终端窗口中创建和管理多个会话（session）和窗格（pane），而且即使关闭了终端或 SSH 连接断开，会话依然在后台运行，下次连接时可以轻松恢复。

基于这个特性，完全可以将前端、后端、测试等不同模块分配到独立的窗格中，模拟小型团队并行开发，让 Claude 同时处理多个任务。

再结合 cron 或 watch 等终端调度工具，可以设置定时任务，让 Claude 在后台持续进行编译、运行测试或执行部署脚本，真正实现全天候无人值守的自动化工作流。

启动第一个会话

tmux new -s cc
在新会话的窗格内，直接运行 claude 即可开始交互。

多窗口并行开发

这是最基础也是最实用的模式。可以创建一个主工作区，将不同任务分配到不同窗格，让它们协同工作。

首先，创建一个名为 workspace 的会话：

tmux new -s workspace
窗格 1：代码生成/重构，划分出一个垂直分屏，你也可以使用快捷方式：Ctrl + b 然后 "

tmux split-window -h
在这个窗格中与 Claude 交互，让它生成或重构代码。

claude
窗格 2：自动测试，再来一个水平分屏。

tmux split-window -v
使用 watch 命令每隔一段时间（例如 300 秒）自动运行测试。

watch -n 300 pytest
放置一个随时可以手动触发的部署脚本。

./deploy.sh
Claude 生成的代码可以被旁边的窗格自动测试，整套开发流程无需你手动切换窗口，一目了然。

一些插件

claude_code_agent_farm：能一次性启动数十个 Claude 代理，每个代理占据一个 tmux 窗格，它最大的亮点就是通过文件锁机制避免并发冲突，不用担心多个代理同时修改的时候产生修改冲突。

框架自带一个仪表盘，每个窗格的标题会实时显示其工作状态，如 “WORKING / DONE / ERROR”，方便掌控全局进度。

tmux-claude-status：这是一个 tmux 插件，可以直接在 tmux 的状态栏中显示 Claude 的工作状态，这样不用时刻瞄着。

ccusage，实时追踪你的 token 消耗、预估成本，还能统计一下当前 5 小时滚动窗口的剩余时长，可以将它放在一个独立的监控会话中运行：

npm i -g ccusage && tmux new -d -s monitor 'ccusage --plan max5'
tmux的插件安装网络上有一堆的教程可以搜索一下。

最后就是它的远程特性，tmux可以在后台启动Claude Code ，这样可以实现远程连接，服务器连接Claude Code使用。

通过将 Claude Code CLI 与 tmux 结合，Claude Code 负责核心的编码，而 tmux 负责会话管理与持久化，