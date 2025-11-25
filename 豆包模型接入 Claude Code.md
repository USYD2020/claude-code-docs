豆包模型接入 Claude Code

打开终端（比如 Warp ），在启动 Claude Code 前输入这几行：

```
123
export ANTHROPIC_BASE_URL=https://ark.cn-beijing.volces.com/api/compatible
export ANTHROPIC_AUTH_TOKEN=<你的ARK-API-KEY>
export ANTHROPIC_MODEL=doubao-seed-code-preview-latest
```

或者你想长期用，直接改配置文件：

```
1
open -e ~/.claude/settings.json
```

把内容改成：

```
12345
{
  "api_key": "xxxxxxx",
  "api_url": "https://ark.cn-beijing.volces.com/api/compatible",
  "model": "doubao-seed-code-preview-latest"
}
```

**就这么简单。**

