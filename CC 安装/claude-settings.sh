#!/bin/bash

# Claude Code Settings Manager
# 用于查看和修改 Claude Code 的设置

SETTINGS_FILE="$HOME/.claude/settings.json"
BACKUP_FILE="$HOME/.claude/settings.json.backup"

# 颜色定义
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# 显示当前设置
show_settings() {
    echo -e "${BLUE}=== Claude Code 当前设置 ===${NC}\n"
    
    if [ ! -f "$SETTINGS_FILE" ]; then
        echo -e "${RED}错误: 配置文件不存在${NC}"
        exit 1
    fi
    
    echo -e "${GREEN}配置文件位置:${NC} $SETTINGS_FILE\n"
    
    # 使用 python3 来美化 JSON 输出
    if command -v python3 &> /dev/null; then
        python3 -m json.tool "$SETTINGS_FILE"
    else
        cat "$SETTINGS_FILE"
    fi
    
    echo ""
}

# 修改 API Key
update_api_key() {
    echo -e "${YELLOW}请输入新的 API Key:${NC}"
    read -r new_key
    
    if [ -z "$new_key" ]; then
        echo -e "${RED}API Key 不能为空${NC}"
        return 1
    fi
    
    # 备份当前配置
    cp "$SETTINGS_FILE" "$BACKUP_FILE"
    
    # 使用 python3 更新 JSON
    python3 << EOF
import json
with open('$SETTINGS_FILE', 'r') as f:
    data = json.load(f)
if 'env' not in data:
    data['env'] = {}
data['env']['ANTHROPIC_API_KEY'] = '$new_key'
with open('$SETTINGS_FILE', 'w') as f:
    json.dump(data, f, indent=2)
EOF
    
    echo -e "${GREEN}✓ API Key 已更新${NC}"
}

# 修改 Base URL
update_base_url() {
    echo -e "${YELLOW}请输入新的 Base URL:${NC}"
    read -r new_url
    
    if [ -z "$new_url" ]; then
        echo -e "${RED}Base URL 不能为空${NC}"
        return 1
    fi
    
    # 备份当前配置
    cp "$SETTINGS_FILE" "$BACKUP_FILE"
    
    # 使用 python3 更新 JSON
    python3 << EOF
import json
with open('$SETTINGS_FILE', 'r') as f:
    data = json.load(f)
if 'env' not in data:
    data['env'] = {}
data['env']['ANTHROPIC_BASE_URL'] = '$new_url'
with open('$SETTINGS_FILE', 'w') as f:
    json.dump(data, f, indent=2)
EOF
    
    echo -e "${GREEN}✓ Base URL 已更新${NC}"
}

# 使用编辑器打开配置文件
edit_settings() {
    # 备份当前配置
    cp "$SETTINGS_FILE" "$BACKUP_FILE"
    
    # 使用默认编辑器打开
    ${EDITOR:-nano} "$SETTINGS_FILE"
    
    echo -e "${GREEN}✓ 配置文件已保存${NC}"
    echo -e "${BLUE}提示: 备份文件保存在: $BACKUP_FILE${NC}"
}

# 恢复备份
restore_backup() {
    if [ ! -f "$BACKUP_FILE" ]; then
        echo -e "${RED}错误: 备份文件不存在${NC}"
        return 1
    fi
    
    cp "$BACKUP_FILE" "$SETTINGS_FILE"
    echo -e "${GREEN}✓ 已从备份恢复配置${NC}"
}

# 主菜单
show_menu() {
    echo -e "${BLUE}=== Claude Code 设置管理器 ===${NC}"
    echo ""
    echo "1) 查看当前设置"
    echo "2) 修改 API Key"
    echo "3) 修改 Base URL"
    echo "4) 使用编辑器编辑配置文件"
    echo "5) 恢复备份"
    echo "0) 退出"
    echo ""
    echo -e "${YELLOW}请选择操作 [0-5]:${NC}"
}

# 主循环
main() {
    while true; do
        show_menu
        read -r choice
        
        case $choice in
            1)
                show_settings
                echo ""
                ;;
            2)
                update_api_key
                echo ""
                ;;
            3)
                update_base_url
                echo ""
                ;;
            4)
                edit_settings
                echo ""
                ;;
            5)
                restore_backup
                echo ""
                ;;
            0)
                echo -e "${GREEN}再见!${NC}"
                exit 0
                ;;
            *)
                echo -e "${RED}无效选择，请重试${NC}"
                echo ""
                ;;
        esac
    done
}

# 如果带参数运行，直接显示设置
if [ "$1" = "show" ] || [ "$1" = "-s" ]; then
    show_settings
    exit 0
fi

# 运行主程序
main
