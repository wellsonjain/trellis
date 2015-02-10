trellis
=======

## oauth login
以 devise 為架構，加上 omniauth 提供 GitHub 及 Google 帳號登入  
oauth 授權的使用者，資料庫不記錄 email 及 password

### GitHub
#### Register new applicatin
[application register](https://github.com/settings/applications/new)

#### config
`/config/application.yml`

```
GITHUB_KEY: "your Client ID here"
GITHUB_SECRET: "your Client Secret here"
```
