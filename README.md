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
```
git clone
cd 
sudo docker-compose up
```
git cloneしたままの状態だと
- http://localhost/ => Hello Worldなトップページ
- http://task.localhost/  => Redmine (初期アカウント / パスワードはadmin / admin)
- http://git.localhost/  => Gitbucket (初期アカウント / パスワードはroot /root)

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
