这个是welcome界面过不了，由于网络问题，直接改下配置跳过就行

在 ~/.claude.json 的 根节点 添加："hasCompletedOnboarding": true , 即可

api和key配置不生效的话

apiurl 和 key 直接配置到json上吧，优先级最高

创建/修改 ~/.claude/settings.json 文件下env节点 （注意文件名别搞错，env节点别搞错）
{
"env": {
"ANTHROPIC_BASE_URL":"https://api.univibe.cc/anthropic",
"ANTHROPIC_AUTH_TOKEN":""
}
}

{
"effortLevel": "high",
"enabledPlugins": {
"seedance-storyboard@elementsix-skills": true
},
"env": {
"ANTHROPIC_BASE_URL": "https://api.univibe.cc/anthropic",
"ANTHROPIC_AUTH_TOKEN": ""
},
"model": "claude-opus-4-6",
"permissions": {
"defaultMode": "bypassPermissions"
},
"skipDangerousModePermissionPrompt": true
}
