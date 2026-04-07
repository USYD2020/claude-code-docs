Part A 是 Work Skill，负责提取同事的技术能力。

包括他负责哪些系统、代码风格是什么样、Code Review 的习惯、工作流程中的一些套路、还有积累的经验知识。

这部分蒸馏出来的 Skill 是真的能帮你写代码、做 CR 的。

Part B 是 Persona，构建了一个五层性格结构来模拟这个人。
从最外层的硬核性格特征，到身份认知、表达风格、决策判断、甚至人际交往中的行为模式，每一层都做了细致的建模。

怎么用

安装很简单，在 Claude Code 环境下执行：

mkdir -p .claude/skills
git clone https://github.com/titanwings/colleague-skill .claude/skills/create-colleague
装一下依赖：

pip3 install -r requirements.txt