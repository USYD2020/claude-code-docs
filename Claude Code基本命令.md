==一个 Claude Code 的终极杀器，真正做到一发入魂，完整 0 配置，对新手极其友好的开源 Claude Code 增强工具。==

使用这个工具，新项目启动，不用再关心各种的配置了，一行命令，就能将业界最佳的工程化实践注入任何项目。让机器去处理那些本该由机器处理的事，环境配置工作彻底没有了！

使用方法极其简单，通过 npx 即可运行：

首先，进入你的项目目录：

```
cd your-project-directory
```

然后，运行这行魔法命令：

```
npx claude-code-templates@latest
```

### 基本命令

- • 启动：`claude`
- • 修 bug：`claude "帮我修复这个 bug"`
- • 单次打印：`claude -p ""`
- • 读大文件：`cat file | claude -p ""`
- • 更新：`claude update`
- • 启动 MCP：`claude mcp`

#### 对话命令

- • 续上次对话：`claude -c`
- • 按 ID 恢复：`claude -r`
- • 长对话恢复：`claude --resume`
- • 自定义名恢复：`claude --resume`

#### 快捷命令（斜杠命令）

- • `/help`：列出所有命令
- • `/add-dir`：加更多工作目录
- `/bug`：报错
- • `/clear`：清除聊天记录
- `/compact`：压缩上下文
- `/config`：配置菜单
- `/cost`：token 花费统计
- `/doctor`：完整性检查
- `/exit`：退出
- • `/init`：初始化项目，生成 CLAUDE.md
- • `/mcp`：看 MCP 列表和状态
- • `/memory`：编辑记忆
- • `/model`：换模型
- `/permissions`：改工具权限
- `/pr_comments`：看 PR 评论
- `/review`：请求代码审查
- `/sessions`：列出 sessions
- `/status`：系统/账户状态
- `/terminal-setup`：装 Shift+Enter 绑定
- `/vim`：切换 vim 模式

### 基本 MCP 命令

- 列服务：`claude mcp list`
- 加服务：`claude mcp add`
- 删服务：`claude mcp remove`
- 配置文件：`~/.claude.json`

### 常用 MCP 服务（选装）

- **Git MCP**
  `npm install -g git-mcp-server`
  `claude mcp add git "git-mcp-server"`
  `claude mcp add github "github-mcp-server --token $GITHUB_TOKEN"`
- **数据库 MCP**
  `npm install -g postgres-mcp-server`
  `npm install -g mysql-mcp-server`
  `npm install -g sqlite-mcp-server`
  `export POSTGRES_URL="postgresql://user:password@localhost:5432/mydb"`
  `claude mcp add postgres "postgres-mcp-server --url $POSTGRES_URL"`
- 安装 context 7

claude mcp add --transport http context7 https://mcp.context7.com/mcp

Chrome mcp (==claude 使用命令行方式安装 MCP==)

Bash(claude mcp add --transport http chrome-mcp-server
http://127.0.0.1:12306/mcp)

```
{
  "mcpServers": {
    "chrome-mcp-server": {
      "type": "streamableHttp",
      "url": "http://127.0.0.1:12306/mcp"
    }
  },

  {
  "mcpServers": {
    "chrome-mcp-stdio": {
      "command": "npx",
      "args": [
        "node",
        "/opt/homebrew/lib/node_modules/mcp-chrome-bridge/dist/mcp/mcp-server-stdio.js"
      ]
    }
  }
}

}
```

- • **MCP 工具权限**
  - 指定权限：`claude --allowedTools "mcp__git__commit,mcp__git__push"`
  - 关键词权限：`claude --allowedTools "mcp__postgres__*"`

​

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
