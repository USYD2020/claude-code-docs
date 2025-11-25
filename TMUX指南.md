#安装
brew install tmux

# 建个名叫'cc'的车间

tmux new -s cc

claude 

# 建个核心工作间
tmux new -s workspace

工位1：Claude主力输出（代码生成/重构）
快捷键  Ctrl+b "  劈个竖窗格（或命令： tmux split-window -h ），在里面敲  claude ，让它咔咔写代码！
• 工位2：AI监工（自动测试）
再来一刀横着劈  Ctrl+b % （或  tmux split-window -v ），用 watch 当监工，定时鞭策测试：
watch -n 300 pytest  # 每300秒（5分钟）自动跑一次测试
• 工位3：一键部署按钮
放个脚本  ./deploy.sh ，随时准备点🔥发射！

