#!/bin/bash

# Claude Code TMUX Helper Script

case "$1" in
    "start")
        echo "🚀 Starting Claude Code workspace..."
        tmux new-session -s workspace -d -c "/Users/gogo/Documents/Claude Code"
        tmux split-window -h -t workspace:0
        tmux split-window -v -t workspace:0.1
        tmux send-keys -t workspace:0.0 'echo "工位1: Claude主力输出 Ready! Type: claude"' Enter
        tmux send-keys -t workspace:0.1 'echo "工位2: AI监工 Ready!"' Enter
        tmux send-keys -t workspace:0.2 'echo "工位3: 部署区 Ready! Type: ./deploy.sh"' Enter
        echo "✅ Workspace created! Attach with: tmux attach -t workspace"
        ;;
    "claude")
        echo "🤖 Starting Claude in main pane..."
        tmux send-keys -t workspace:0.0 'claude' Enter
        ;;
    "monitor")
        echo "👁️ Starting file monitoring..."
        tmux send-keys -t workspace:0.1 'watch -n 10 "ls -la && echo \"--- Git Status ---\" && git status --short"' Enter
        ;;
    "deploy")
        echo "🚀 Running deployment..."
        tmux send-keys -t workspace:0.2 './deploy.sh' Enter
        ;;
    "attach")
        tmux attach -t workspace
        ;;
    "kill")
        tmux kill-session -t workspace
        tmux kill-session -t cc
        echo "🔥 All Claude Code sessions terminated"
        ;;
    *)
        echo "Claude Code TMUX Helper"
        echo "Usage: $0 {start|claude|monitor|deploy|attach|kill}"
        echo ""
        echo "Commands:"
        echo "  start   - Create workspace with 3 panes"
        echo "  claude  - Start Claude in main pane"
        echo "  monitor - Start file monitoring"
        echo "  deploy  - Run deployment script"
        echo "  attach  - Attach to workspace"
        echo "  kill    - Kill all sessions"
        ;;
esac