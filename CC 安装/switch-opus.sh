#!/bin/bash
# OpenCode Opus 模型通道切换脚本
# 在 Univibe 和 Google Antigravity 之间一键切换
#
# 用法:
#   ./switch-opus.sh          # 自动切换到另一个通道
#   ./switch-opus.sh univibe  # 强制切到 Univibe
#   ./switch-opus.sh google   # 强制切到 Google Antigravity

CONFIG="$HOME/.config/opencode/oh-my-opencode.json"
UNIVIBE="univibe/claude-opus-4-6"
GOOGLE="google/antigravity-claude-opus-4-6-thinking"

if [ ! -f "$CONFIG" ]; then
  echo "[错误] 找不到配置文件: $CONFIG"
  exit 1
fi

# 检测当前通道
if grep -q "$UNIVIBE" "$CONFIG"; then
  CURRENT="univibe"
elif grep -q "$GOOGLE" "$CONFIG"; then
  CURRENT="google"
else
  echo "[错误] 配置文件中未找到已知的 Opus 模型配置"
  echo "  期望: $UNIVIBE 或 $GOOGLE"
  exit 1
fi

# 决定目标通道
if [ -n "$1" ]; then
  case "$1" in
    univibe) TARGET="univibe" ;;
    google)  TARGET="google" ;;
    *)
      echo "用法: $0 [univibe|google]"
      exit 1
      ;;
  esac
else
  # 自动切换
  if [ "$CURRENT" = "univibe" ]; then
    TARGET="google"
  else
    TARGET="univibe"
  fi
fi

if [ "$CURRENT" = "$TARGET" ]; then
  echo "当前已经是 $TARGET 通道，无需切换"
  echo "  模型: $([ "$TARGET" = "univibe" ] && echo "$UNIVIBE" || echo "$GOOGLE")"
  exit 0
fi

# 执行替换
if [ "$TARGET" = "google" ]; then
  sed -i '' "s|$UNIVIBE|$GOOGLE|g" "$CONFIG"
else
  sed -i '' "s|$GOOGLE|$UNIVIBE|g" "$CONFIG"
fi

# 显示结果
echo "===== OpenCode Opus 通道已切换 ====="
echo ""
echo "  $CURRENT --> $TARGET"
echo ""
if [ "$TARGET" = "google" ]; then
  echo "  模型: $GOOGLE"
  echo "  说明: 走 Google Antigravity 通道 (带思考链)"
else
  echo "  模型: $UNIVIBE"
  echo "  说明: 走 Univibe OpenAI 兼容通道"
fi
echo ""
echo "影响的配置项:"
echo "  - agents.hephaestus"
echo "  - categories.deep"
echo ""
echo "请重启 OpenCode 使配置生效"
