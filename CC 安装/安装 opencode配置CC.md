# OpenCode + Univibe 配置

## opencode.json — Univibe Provider 配置

```json
{
  "univibe": {
    "models": {
      "claude-opus-4-6": {},
      "claude-opus-4-5-20251101": {}
    },
    "npm": "@ai-sdk/openai-compatible",
    "options": {
      "baseURL": "https://api.univibe.cc/openai/v1",
      "apiKey": "sk-19xK0drWxbNVEvw4v11UQ3AHapDcekrN"
    }
  }
}
```

- baseURL: https://api.univibe.cc/openai/v1 ✓
- 可用模型：
  - claude-opus-4-6
  - claude-opus-4-5-20251101

## oh-my-opencode Agent 配置

所有 Claude agent 统一使用 `univibe/claude-opus-4-6` (max variant)

┌───────────────────┬───────────────────────────────────────┐
│ Agent             │ 模型                                  │
├───────────────────┼───────────────────────────────────────┤
│ hephaestus        │ univibe/claude-opus-4-6 (max)         │
├───────────────────┼───────────────────────────────────────┤
│ sisyphus          │ univibe/claude-opus-4-6 (max)         │
├───────────────────┼───────────────────────────────────────┤
│ oracle            │ univibe/claude-opus-4-6 (max)         │
├───────────────────┼───────────────────────────────────────┤
│ explore           │ univibe/claude-opus-4-6 (max)         │
├───────────────────┼───────────────────────────────────────┤
│ prometheus        │ univibe/claude-opus-4-6 (max)         │
├───────────────────┼───────────────────────────────────────┤
│ metis             │ univibe/claude-opus-4-6 (max)         │
├───────────────────┼───────────────────────────────────────┤
│ atlas             │ univibe/claude-opus-4-6 (max)         │
├───────────────────┼───────────────────────────────────────┤
│ librarian         │ univibe/claude-opus-4-6 (max)         │
├───────────────────┼───────────────────────────────────────┤
│ momus             │ univibe/claude-opus-4-6 (max)         │
├───────────────────┼───────────────────────────────────────┤
│ multimodal-looker │ google/antigravity-gemini-3-flash     │
└───────────────────┴───────────────────────────────────────┘
