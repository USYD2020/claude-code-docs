来自Anthropic 黑客松获奖者的ClaudeCode 配置。

作者把自己10个月以上高强度使用Claude Code构建产品的配置全部开源了，你可以一键安装到自己的电脑上，快速构建一套高水平的AI编程环境。

装完即用，所有commands、agents、skills、hooks立刻生效。

1、子代理
planner：负责拆解任务、规划实现路径
architect：负责系统设计决策
code-reviewer：审查代码质量和安全
security-reviewer：专门做漏洞分析
tdd-guide：引导测试驱动开发
e2e-runner：跑Playwright端到端测试
refactor-cleaner：清理死代码
doc-updater：同步更新文档
2、Hooks（在工具执行前后自动触发脚本）
- 跨会话记忆持久化：会话结束自动保存上下文，下次启动自动加载
- 代码卫生检查：写入JS/TS文件时自动扫描console.log并警告
- 文档管控：阻止创建不必要的md/txt文件，强制用README
- Push前审查：git push前自动打开编辑器让你确认
3、Rules（强制执行的规则）
- 禁止硬编码密钥
- 强制TDD、80%测试覆盖率
- 统一Git提交格式
- 何时该委派给子代理
4、Commands（快捷命令）
/tdd - 启动测试驱动开发流程
/plan - 让planner代理规划实现方案
/code-review - 启动代码审查
/build-fix - 自动修复构建错误
/learn - 从当前会话提取模式存入Skills
5、Skills（技能库）
- 前端模式（React/Next.js最佳实践）
- 后端模式（API、数据库、缓存）
- 安全审查清单
- 验证循环评估

还有两篇配套指南：基础篇讲配置类型和上下文窗口管理；进阶篇讲token优化、跨会话记忆、并行策略、子代理编排。

最方便的是，它可以直接作为Claude Code插件一键安装：

项目地址：github.com/affaan-m/everything-claude-code

---

## Installation

### Option 1: Install as a Claude Code Plugin

# Add this repo as a marketplace
/plugin marketplace add affaan-m/everything-claude-code

# Install the plugin
