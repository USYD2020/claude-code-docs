# MCP 安装配置指令文档
> 🤖 专为 AI 助手设计的 MCP 操作指令集
## 基础环境检查
```bash
# 检查 Claude Code 是否安装
claude --version
# 检查当前 MCP 服务状态
claude mcp list
# 检查特定服务详情
claude mcp get <服务名>
```
## MCP 服务管理命令
### 添加服务
```bash
# 基础添加命令
claude mcp add <服务名> <命令路径> [参数...]
# 带环境变量添加
claude mcp add <服务名> <命令路径> -e KEY1=value1 -e KEY2=value2
# JSON 配置添加（推荐复杂配置）
claude mcp add-json <服务名> '{"command": "命令", "args": ["参数1", "参数2"], "env": {"KEY": "value"}}'
# 指定作用域添加
claude mcp add -s local <服务名> <命令>     # 仅当前项目
claude mcp add -s project <服务名> <命令>  # 项目共享
claude mcp add -s user <服务名> <命令>     # 全局用户
```
### 服务操作
```bash
# 查看所有服务
claude mcp list
# 查看服务详情
claude mcp get <服务名>
# 删除服务
claude mcp remove <服务名>
# 重置项目选择
claude mcp reset-project-choices
```
## 常用 MCP 服务配置
### 飞书 MCP
```bash
claude mcp add-json feishu '{
  "command": "npx",
  "args": [
    "@larksuiteoapi/lark-mcp", "mcp",
    "-a", "APP_ID_HERE",
    "-s", "APP_SECRET_HERE",
    "-u", "USER_TOKEN_HERE"
  ],
  "env": {}
}'
```
## 项目配置文件模板
### .mcp.json 文件格式
```json
{
  "mcpServers": {
    "service-name": {
      "command": "/path/to/command",
      "args": ["arg1", "arg2"],
      "env": {
        "ENV_VAR": "value"
      }
    }
  }
}
```
## 安装操作流程
### 标准安装流程
1. 退出 Claude 会话（如果正在运行）
2. 在系统终端执行 MCP 安装命令
3. 验证安装：`claude mcp list`
4. 重新启动 Claude：`claude`
5. 测试服务：在 Claude 中使用 `/mcp` 命令

## AI 助手操作指南
当用户需要安装 MCP 服务时，请：
1. **确认需求**：询问用户想要安装什么类型的 MCP 服务
2. **收集参数**：获取必要的配置信息（API Key、数据库连接等）
3. **生成命令**：根据上述模板生成具体的安装命令
4. **提供流程**：提醒用户按照标准安装流程操作
5. **验证测试**：指导用户验证安装是否成功