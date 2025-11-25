# 创建个人命令目录（如果不存在）
mkdir -p ~/.claude/commands

# 创建命令文件并写入内容
echo '使用 prompt-optimizer 帮我优化以下提示词。请勿直接执行，先将优化后的版本给我确认。待优化提示词：$ARGUMENTS' > ~/.claude/commands/prompt-optimize.md