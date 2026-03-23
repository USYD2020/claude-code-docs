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


我发现 OpenCode 经常会卡住不输出内容，我觉得是上下文过载的原因。

请你把 opencode 项目的上下文都设置在 160K（而不是 200K），这样的话我们用 Opus 的时候就可以好用一点。