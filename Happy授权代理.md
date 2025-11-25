## 目标
- 系统与其他程序继续走你的代理（Veee 等）。
- 仅 Happy 直连自己的后端域名（cluster-fluster），避免 400/Bad Request。
- Claude 如需经代理，优先走 SOCKS 以避免 HTTPS 被破坏。

---

## 仅让 Happy 直连（不排除 anthropic）
- 一次性直连登录（交互式终端执行，避免 Raw mode）：
```bash
script -q /dev/null env \
  -u HTTP_PROXY -u HTTPS_PROXY -u http_proxy -u https_proxy -u ALL_PROXY -u all_proxy \
  NO_PROXY="cluster-fluster.com,api.cluster-fluster.com" \
  no_proxy="cluster-fluster.com,api.cluster-fluster.com" \
  happy auth login --force
```
- 永久别名（推荐）：把下面加入 `~/.zshrc`，使仅 Happy 直连，其他程序仍按系统代理：
```bash
alias happy-direct='NO_PROXY=cluster-fluster.com,api.cluster-fluster.com no_proxy=cluster-fluster.com,api.cluster-fluster.com happy'
```
生效：`exec zsh`

示例用法：
```bash
happy-direct auth status
happy-direct daemon start
happy-direct --permission-mode acceptEdits --resume
happy-direct connect claude
```

---

## Claude 经代理（推荐 SOCKS，避免 400）
- 为 Claude 单独设 SOCKS 代理（不影响系统其他程序）：
```bash
alias claude-via-socks='HTTPS_PROXY=socks5h://127.0.0.1:15235 HTTP_PROXY=socks5h://127.0.0.1:15235 claude'
```
- 连接性自检（应返回 401/200 代表联通；404 代表路径写错）：
```bash
curl --socks5-hostname 127.0.0.1:15235 -sS -o /dev/null \
  -w 'socks %{http_code}\n' \
  -H 'anthropic-version: 2023-06-01' \
  https://api.anthropic.com/v1/models
```

---

## 验证 Happy 是否可用
```bash
happy-direct auth status        # 期望：✓ Authenticated、✓ Machine registered
happy-direct daemon start
happy-direct daemon status      # 期望：Daemon is running
happy-direct --permission-mode acceptEdits --resume
```
- 在手机里给当前会话发一条消息（如“pwd”或“创建 PING.md 写 hello”）验证控制权。
- 推送示例：
```bash
happy-direct notify -p "构建完成 ✅" -t "CI"
```

---

## 常见问题与排错
- 400 Bad Request（访问 cluster-fluster/Anthropic）：
  - Happy：用上面的直连别名（NO_PROXY 仅含 cluster-fluster）。
  - Claude：优先走 SOCKS 代理（`claude-via-socks`），或检查公司代理是否支持 HTTPS CONNECT。
- 403 Please run /login 或 OAuth 拉取角色失败：
  - 在会话里执行 `/logout` 后 `/login`，在浏览器选择有权限的账号/组织；
  - 或使用 `/setup-token` 粘贴控制台 API Key（需账号具备权限）。
- 404 在 connect claude 末步：通常是服务端路由或版本不匹配；不影响“手机控制本机”，仅影响“云端代调用 Claude”。
- “Permissions shown in terminal only”：在手机随便发一句话或点 Reset 抢回控制权。

---

## 备忘（成功样例）
```text
✓ Authenticated
  Token: eyJhbGciOiJFZERTQSJ9.eyJzdWIiO...
✓ Machine registered
  Machine ID: b2c8fb30-6a02-48fb-80ac-0d71b139b3d7
  Host: gogos-MBP.lan
```
