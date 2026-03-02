配置opencode中的模型定义 让 Univibe 的 API 可以用 opus


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
  - gemini-3-\* 系列

oh-my-opencode Agent 配置
┌───────────────────┬───────────────────────────────────────┐
│ Agent │ 模型 │
├───────────────────┼───────────────────────────────────────┤
│ hephaestus │ univibe/claude-opus-4-6 (max variant) │
├───────────────────┼───────────────────────────────────────┤
│ oracle │ univibe/claude-opus-4-6 │
├───────────────────┼───────────────────────────────────────┤
│ explore │ univibe/claude-opus-4-6 │
├───────────────────┼───────────────────────────────────────┤
│ prometheus │ univibe/claude-opus-4-6 │
├───────────────────┼───────────────────────────────────────┤
│ metis │ univibe/claude-opus-4-6 │
├───────────────────┼───────────────────────────────────────┤
│ atlas │ univibe/claude-opus-4-6 │
├───────────────────┼───────────────────────────────────────┤
│ multimodal-looker │ google/antigravity-gemini-3-flash │
├───────────────────┼───────────────────────────────────────┤
│ librarian │ zai-coding-plan/glm-4.7 │
├───────────────────┼───────────────────────────────────────┤
│ momus │ zai-coding-plan/glm-4.7 │
└───────────────────┴───────────────────────────────────────┘

# 重要设置

帮我调整 open code 里面的模型渠道，packycode模型 id 是 claude-opus-4-6，设置上下文为 150k，并设置为默认 sisyphus 模型为 packy opus
