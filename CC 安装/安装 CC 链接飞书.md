npx skills add op7418/Claude-to-IM-skill
其他详细的接入指南啥的我就不在这里说了，直接去看文档就行：
https://github.com/op7418/Claude-to-IM

重要：飞书应用还需在开放平台完成以下 4 步配置，否则机器人无法收发消息：

Step A — 批量添加权限
进入应用的 "权限管理" 页面
点击 "批量切换为按依赖配置" 链接
粘贴以下 JSON：

{
  "scopes": {
    "tenant": [
      "im:chat.access_event.bot_p2p_chat:read",
      "im:chat.members:bot_access",
      "im:message",
      "im:message.group_at_msg:readonly",
      "im:message.p2p_msg:readonly",
      "im:message:readonly",
      "im:message:send_as_bot",
      "im:resource"
    ],
    "user": [
      "im:chat.access_event.bot_p2p_chat:read"
    ]
  }
}
点击 保存
Step B — 启用机器人
进入 "添加应用能力" → 启用 "机器人"
Step C — 配置事件与回调（长连接）
进入左侧 "事件与回调"
事件分发方式选择 "长连接"（WebSocket）
添加事件：im.message.receive_v1（接收消息）
保存
Step D — 发布版本
进入 "版本管理与发布" → 创建版本 → 提交审核
在飞书管理后台审批通过