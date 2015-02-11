trellis
=======

## oauth login
以 devise 為架構，加上 omniauth 提供 GitHub 及 Google 帳號登入<br>
oauth 授權的使用者，資料庫不記錄 password

### GitHub
#### Register new applicatin
[application register](https://github.com/settings/applications/new)

#### config
`/config/application.yml`

```
GITHUB_KEY: "your Client ID here"
GITHUB_SECRET: "your Client Secret here"
```

### Google
#### Register new applicatin
[application register](https://console.developers.google.com)

新增 app 憑證
![google-oauth-app](https://dl.dropboxusercontent.com/u/14225941/oauth_01.png)

新增 API 取得使用者資訊
![google-oauth-api](https://dl.dropboxusercontent.com/u/14225941/oauth_02.png)

#### config
`/config/application.yml`

```
GOOGLE_CLIENT_ID: "your Client ID here"
GOOGLE_CLIENT_SECRET: "your Client Secret here"
```

### Facebook
#### Register new applicatin
[application register](https://developers.facebook.com/)

啟用 app 需要申請 Review，為了方便測試我在正式版 app 底下開了 test version<br>
記得在 settings -> advanced 中設定 redirect URIs，FB 會確認 oauth request 是否來自允許的域名

![facebook-oauth](https://dl.dropboxusercontent.com/u/14225941/oauth_03.png)

#### config
`/config/application.yml`

```
FACEBOOK_KEY: "your Client ID here"
FACEBOOK_SECRET: "your Client Secret here"
```