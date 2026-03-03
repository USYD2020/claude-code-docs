==一个 Claude Code 的终极杀器，真正做到一发入魂，完整 0 配置，对新手极其友好的开源 Claude Code 增强工具。==

npm install -g @anthropic-ai/claude-code
​
npm install -g galaxycodeswitch


- **全局配置**：`~/.claude.json`，全局生效

  ```
  {
    "model":"claude-sonnet-4",
  "verbose":true,
  "outputFormat":"text",
  "allowedTools":["Edit","View"],
  "disallowedTools":[]
  }
  ```

- • **项目配置**：`settings.json`或类似名，只在项目目录生效

  ```
  {
    "model":"claude-sonnet-4",
  "systemPrompt":"You are a senior developer working on this project",
  "allowedTools":[
      "Edit",
      "View",
      "Bash(git:)",
      "Bash(npm:*)"
  ]
  }
  ```

一键安装 ClaudeCodeNow 启动所有权限，支持其他 API
curl -fsSL https://raw.githubusercontent.com/orange2ai/claude-code-now/main/install.sh | bash

💡 提示:
• 首次启动可能需要确认安全性设置
• 确保已安装 Claude Code CLI
• 享受一键启动的便利！

🔧 配置切换器:
• 位置: /Applications/Claude Code Now.app/Contents/Resources/config-switcher/
• 支持: 智谱 AI、Anthropic 官方、自定义 API
