npm install -g @anthropic-ai/claude-code

配置好4.6

配置两个模型：

claude-haiku-4-5-20251001 (需要 URL 和 API key)
claude-opus-4-6 (使用同一个 Univibe API)
用户提供的 Univibe API：

URL: https://api.univibe.cc/anthropic
API Key:
我需要：

读取当前配置，了解模型定义的位置
在 opencode.json 中添加 haiku-4-5-20251001 模型定义
更新 oh-my-opencode.json，让所有 Opus 指向 Univibe 的 claude-opus-4-6
验证配置


welcome界面过不了，直接改下配置跳过就行

在 ~/.claude.json 的 根节点 添加："hasCompletedOnboarding": true , 即可

api和key配置不生效的话

apiurl 和 key 直接配置到json上吧，优先级最高

创建/修改 ~/.claude/settings.json 文件下env节点 （注意文件名别搞错，env节点别搞错）
{
"env": {
   "ANTHROPIC_BASE_URL":"https://api.univibe.cc/anthropic",
   "ANTHROPIC_AUTH_TOKEN":""
}
}

caffeinate -s 可以让你的 Mac 保持唤醒状态

caffeinate -dims  同时阻止显示器休眠 + 系统空闲休眠 + 磁盘休眠 + 系统睡眠
