# 開発チーム立ち上げ用お手軽サーバ
必要だったからつくった。

## 構成
Nginx、Redmine、Gitbucket、あと必要なその他をそれぞれDockerコンテナで立ち上げています。  
あとアカウントが１つで済むようにLDAPもコンテナ立ててます。  
公式イメージ以外は後々Dockerfileを自前で用意するようにするつもり。  
ドメインとかは適当に変えてください。

## 必要なもの
- git
- docker
- docker-compose

## 使い方
好きなディレクトリで
```
git clone git@github.com:190ikp/pm-server.git
docker-compose up -d
```
git cloneしたままの状態だと
- example.com => Hello Worldなトップページ
- redmine.example.com  => Redmine (初期アカウント / パスワードはadmin / admin)
- git.example.com  => Gitbucket (初期アカウント / パスワードはroot /root)

にアクセスします。

止めたいときは
```
sudo docker-compose down
``` 
きちんと使いたい場合は
- `secrets/db_redmine_password.txt`

を書き換えてください。

## そのうち
LDAPで認証を管理できるようにするつもり。
