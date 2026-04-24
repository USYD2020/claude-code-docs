终端命令

# 最推荐：防止系统休眠（包括合盖），直到你手动 Ctrl+C

caffeinate -dims
关闭会话或手动终止进程即可恢复正常休眠。

# 指定时长（秒），比如跑 8 小时

caffeinate -dims -t 28800

# 让某个进程跑完才允许休眠

caffeinate -dims -w <PID>
参数说明：

-d — 防止显示器休眠
-i — 防止系统空闲休眠
-m — 防止磁盘休眠
-s — 防止系统休眠（接电源时）
-dims 全加上最保险

# 关键前提：合盖不休眠

macOS 默认合盖就休眠，caffeinate 在电池供电时可能挡不住。要确保合盖继续跑：

# 查看当前设置

pmset -g

# 关闭合盖休眠（需要接电源）

sudo pmset -a lidwake 0
sudo pmset -a sleep 0
sudo pmset -a disablesleep 1
用完记得恢复：sudo pmset -a disablesleep 0

最稳方案
接上电源 + 外接显示器/键盘/鼠标任一，macOS 会自动进入「翻盖模式」(Clamshell Mode)，合盖不休眠，无需任何命令。

如果没有外接设备，就用：

# 接电源 + 运行这个

caffeinate -dims
这是最简单可靠的组合。

下载大文件 caffeinate -i curl ...
长时间编译代码 caffeinate -im make
演示/展示时屏幕常亮 caffeinate -d
跑一个耗时脚本 caffeinate -i python3 script.py
临时保持唤醒 30 分钟 caffeinate -i -t 1800
合盖不休眠（接电源） caffeinate -s
