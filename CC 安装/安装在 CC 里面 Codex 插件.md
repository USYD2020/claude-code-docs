/plugin marketplace add openai/codex-plugin-cc
/plugin install codex@openai-codex
---
核心价值在于：在不离开 Claude Code 的情况下，拿到一个来自不同 Agent 的二次审查。

日常代码改动，跑 /codex:review。

高风险操作，比如数据库迁移、权限变更、基础设施脚本，用 /codex:adversarial-review，让 Codex 专门来质疑你的假设。

线程卡住了？或者干脆想换个 Agent 试试？用 /codex:rescue 直接交出去。

比较长的任务还能跑后台：
/codex:review --background
/codex:status
/codex:result
还有个可选功能叫 review gate：
/codex:setup --enable-review-gate

开了之后，Claude Code 在结束之前会先等 Codex 审查完。

听上去不错，但 VB 也提醒，这容易让 Claude 和 Codex 形成循环调用，token 消耗会很快。