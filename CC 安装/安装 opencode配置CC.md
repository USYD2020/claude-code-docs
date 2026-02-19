配置opencode中的模型定义 让 Univibe 的 API 可以用 opus

{
  "$schema": "https://opencode.ai/config.json",
  "provider": {
    "univibe": {
      "npm": "@ai-sdk/openai-compatible",
      "name": "UniVibe",
      "options": {
        "baseURL": "https://api.univibe.cc/openai/v1",
        "apiKey": "你的API密钥"
      },
      "models": {
        "claude-opus-4-6": {},
        "claude-sonnet-4-5-20250929": {},
        "claude-opus-4-5-20251101": {},
        "claude-haiku-4-5-20251001": {},
        "gpt-5": {},
        "gpt-5-codex": {},
        "gpt-5.1": {},
        "gpt-5.1-codex": {},
        "gpt-5.1-codex-max": {},
        "gpt-5.1-codex-mini": {},
        "gpt-5.2": {},
        "gpt-5.2-codex": {},
        "gpt-5.3-codex": {},
        "gemini-3-flash-preview": {},
        "gemini-3-pro-preview": {}
      }
    }
  }
}


我需要：

读取当前配置，了解模型定义的位置
在 opencode.json 中添加模型定义
更新 oh-my-opencode模型配置 
参考我已经配置好的Univibe Provider（Claude 模型）
  - baseURL: https://api.univibe.cc/openai/v1 ✓
  - 可用模型：
    - claude-opus-4-6
    - claude-sonnet-4-5-20250929
    - claude-opus-4-5-20251101
    - claude-haiku-4-5-20251001
    - gpt-5.x 系列
    - gemini-3-* 系列

  oh-my-opencode Agent 配置
  ┌───────────────────┬───────────────────────────────────────┐
  │       Agent       │                 模型                  │
  ├───────────────────┼───────────────────────────────────────┤
  │ hephaestus        │ univibe/claude-opus-4-6 (max variant) │
  ├───────────────────┼───────────────────────────────────────┤
  │ oracle            │ univibe/claude-opus-4-6               │
  ├───────────────────┼───────────────────────────────────────┤
  │ explore           │ univibe/claude-opus-4-6               │
  ├───────────────────┼───────────────────────────────────────┤
  │ prometheus        │ univibe/claude-opus-4-6               │
  ├───────────────────┼───────────────────────────────────────┤
  │ metis             │ univibe/claude-opus-4-6               │
  ├───────────────────┼───────────────────────────────────────┤
  │ atlas             │ univibe/claude-opus-4-6               │
  ├───────────────────┼───────────────────────────────────────┤
  │ multimodal-looker │ google/antigravity-gemini-3-flash     │
  ├───────────────────┼───────────────────────────────────────┤
  │ librarian         │ zai-coding-plan/glm-4.7               │
  ├───────────────────┼───────────────────────────────────────┤
  │ momus             │ zai-coding-plan/glm-4.7               │
  └───────────────────┴───────────────────────────────────────┘