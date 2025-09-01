/Users/gogo/.bun/bin/claude

Claude 桌面版瞬间拥有了 Claude code 命令行的所有超能力！
加入下面这行：

"claude-code": {
"command": "claude",
"args": ["mcp", "serve"],
"env": {}
},
或者
{
  "mcpServers": {
    "claude-code": {
      "command": "claude",
      "args": ["mcp", "serve"],
      "env": {}
    }
  }
}
