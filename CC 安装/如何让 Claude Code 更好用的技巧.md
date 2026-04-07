一行命令安装：brew install --cask waveterm

开源地址：https://github.com/wavetermdev/waveterm

左边跑 Claude Code，右边开一个 AI 聊天面板辅助分析，下面再放一个文件预览窗口看代码。

---

Mac 合盖默认会睡眠，但 macOS 自带一个命令叫 caffeinate，可以阻止系统睡眠：

caffeinate -s

执行这条命令后，合上盖子电脑也不会睡眠，需要接电源。想取消就 Ctrl + C。

效果：充电时 Mac 不会自动休眠，但拨掉电源后正常休眠。
常见用法：

- caffeinate－无参数，持续保持唤醒直到手动 Ctrl＋C 停止
- caffeinate－d－防止屏草熄灭
- caffeinate－i－防止系统空闲休眠
- caffeinate－s－充电时防休眠
- caffeinate－t 3600 －保持唤醒 3600 秒（1小时）
- caffeinate＜command＞－仅在指定命令运行期间保持唤醒

组合使用：caffeinate－dis $=$ 防屏惹熄灭 + 防空闲休眠 + 防充电休眠
