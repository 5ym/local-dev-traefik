# local-dev-traefik
## 説明
ローカル開発環境でtraefikに名前解決されることで開発環境ごとのポート管理等の手間を省くためのものこれをdockerフォルダに入れるかstack名称をdockerにするかして立ち上げる  
下記のような記述をdocker-compose.ymlに追加し名前解決させたいコンテナをそのネットワークに参加させる  
名前解決ルールはコンテナ名称が`hoge-fuga`だった場合`hoge.localhost`のようにハイフンより前が正規表現で切り取られてネーミングされる

```yml
networks:
  docker_default:
    external: true
    name: docker_default
```
## 使い方
下記のようなコマンドでサンプルをコピーし適宜カスタマイズして立ち上げる

```sh
cp docker-compose-sample.yml docker-compose.yml && cp traefik-sample.toml traefik.toml
```