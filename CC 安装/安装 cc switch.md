它是完全开源的一个工具：https://github.com/farion1231/cc-switch

具体不同电脑型号的下载版本链接：https://github.com/farion1231/cc-switch/releases


安装 CC Switch CLI：
# 下载 Universal Binary（推荐，支持 Apple Silicon + Intel）
curl -LO https://github.com/saladday/cc-switch-cli/releases/latest/download/cc-switch-cli-darwin-universal.tar.gz

# 解压
tar -xzf cc-switch-cli-darwin-universal.tar.gz

# 添加执行权限
chmod +x cc-switch

# 移动到 PATH
sudo mv cc-switch /usr/local/bin/

# 如遇 "无法验证开发者" 提示
xattr -cr /usr/local/bin/cc-switch