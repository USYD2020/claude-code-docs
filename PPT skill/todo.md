请帮我安装 PPT Generator Skill：
1. 从 GitHub 克隆项目：
   git clone https://github.com/op7418/NanoBanana-PPT-Skills.git
   cd NanoBanana-PPT-Skills
2. 创建 Python 虚拟环境：
   python3 -m venv venv
   source venv/bin/activate
3. 安装依赖：pip install google-genai pillow
4. 配置系统环境变量（请将 YOUR_API_KEY_HERE 替换为我的实际 API 密钥）：对于 zsh 用户（macOS 默认）：echo 'export GEMINI_API_KEY="YOUR_API_KEY_HERE"' >> ~/.zshrc source ~/.zshrc
   对于 bash 用户：echo 'export GEMINI_API_KEY="YOUR_API_KEY_HERE"' >> ~/.bashrc source ~/.bashrc

gemini API
AIzaSyDFuBr3aC2yGL07bv82SOQ9gOXDRQcdFMM
aistudio key
AIzaSyAVIeh5cWMEmc6HTVX1wBLQ9P7LZux-uRU

5. 验证安装：
   ./run.sh --help
6. 运行测试（如果有 test_slides_plan.json）：
   ./run.sh --plan test_slides_plan.json --style styles/gradient-glass.md --resolution 2K
完成后，告诉我安装结果和如何使用。