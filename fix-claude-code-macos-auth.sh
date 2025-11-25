#!/usr/bin/env bash
# Fix Claude Code macOS authentication issues
# Addresses: https://github.com/anthropics/claude-code/issues/3566

set -e

echo "🔧 Claude Code macOS Authentication Fix Script"
echo "============================================="
echo "This script will attempt multiple fixes for the Opus model access issue"
echo ""

# Function to check if command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# 1. Clear keychain entries
echo "📌 Step 1: Clearing macOS Keychain entries..."
security delete-generic-password -s "Claude Code" 2>/dev/null || echo "  No keychain entry found (this is OK)"
security delete-generic-password -s "Claude Code-credentials" 2>/dev/null || echo "  No credentials entry found (this is OK)"

# 2. Backup and remove potentially corrupted config
echo "📌 Step 2: Backing up and removing Claude config files..."
if [ -f ~/.claude.json ]; then
    cp ~/.claude.json ~/.claude.json.backup.$(date +%Y%m%d_%H%M%S)
    echo "  Backed up ~/.claude.json"
fi
rm -f ~/.claude.json
rm -rf ~/.claude/

# 3. Clear all Claude Code installations
echo "📌 Step 3: Removing all Claude Code installations..."
if command_exists npm; then
    npm uninstall -g @anthropic-ai/claude-code 2>/dev/null || true
fi

# Find and remove all node_modules installations
find ~/.nvm/versions/node -name "@anthropic-ai" -type d -exec rm -rf {} + 2>/dev/null || true
find /usr/local/lib/node_modules -name "@anthropic-ai" -type d -exec rm -rf {} + 2>/dev/null || true
find /opt/homebrew/lib/node_modules -name "@anthropic-ai" -type d -exec rm -rf {} + 2>/dev/null || true

# 4. Set environment variables to prevent Bedrock interference
echo "📌 Step 4: Setting environment variables..."
export CLAUDE_USE_BEDROCK=false
export DISABLE_BEDROCK=true
export CLAUDE_CODE_USE_BEDROCK=false

# Add to appropriate shell config if not already present
SHELL_CONFIG=""
if [ -n "$ZSH_VERSION" ]; then
    SHELL_CONFIG="$HOME/.zshrc"
elif [ -n "$BASH_VERSION" ]; then
    SHELL_CONFIG="$HOME/.bashrc"
fi

if [ -n "$SHELL_CONFIG" ] && [ -f "$SHELL_CONFIG" ]; then
    if ! grep -q "CLAUDE_USE_BEDROCK=false" "$SHELL_CONFIG"; then
        echo "" >> "$SHELL_CONFIG"
        echo "# Claude Code macOS fix" >> "$SHELL_CONFIG"
        echo "export CLAUDE_USE_BEDROCK=false" >> "$SHELL_CONFIG"
        echo "export DISABLE_BEDROCK=true" >> "$SHELL_CONFIG"
        echo "export CLAUDE_CODE_USE_BEDROCK=false" >> "$SHELL_CONFIG"
        echo "  Added environment variables to $SHELL_CONFIG"
    fi
fi

# 5. Reinstall Claude Code
echo "📌 Step 5: Reinstalling Claude Code..."
if command_exists npm; then
    npm install -g @anthropic-ai/claude-code@latest
else
    echo "❌ npm not found. Please install Node.js first."
    exit 1
fi

# 6. Prompt for restart
echo ""
echo "✅ Fix script completed!"
echo ""
echo "🔄 IMPORTANT: Please restart your machine now"
echo "   After restart:"
echo "   1. Run 'claude' in terminal"
echo "   2. Log in with your Claude Max account"
echo "   3. Try '/model opus' to verify it works"
echo ""
echo "If the issue persists after restart, the bug is in Claude Code itself"
echo "and requires a fix from Anthropic (tracked in issue #3566)"