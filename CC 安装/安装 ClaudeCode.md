npm install -g @anthropic-ai/claude-code

配置好4.6

配置两个模型：

claude-haiku-4-5-20251001 (需要 URL 和 API key)
claude-opus-4-6 (使用同一个 Univibe API)
用户提供的 Univibe API：

URL: https://api.univibe.cc/anthropic
API Key: sk-thIinsTzZMwkbI34HMpWgWRcg7BwN2jE
我需要：

读取当前配置，了解模型定义的位置
在 opencode.json 中添加 haiku-4-5-20251001 模型定义
更新 oh-my-opencode.json，让所有 Opus 指向 Univibe 的 claude-opus-4-6
验证配置