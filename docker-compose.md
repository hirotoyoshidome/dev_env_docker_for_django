## Docker-Composeの使い方

? docker-compse.ymlに記載されたように、
複数のコンテナをまとめて管理することができる

今回で言うと、
* mysqlの部分はmysql5.7のイメージをpullしてコンテナ名にtest-mysqlを指定
* environmentの部分でMySQLの内部の設定もしてくれるように設定している(空っぽのDBまで作成される)

* nginxの部分はportsでポートフォワードしている（それ以外はmysqlと一緒）

* myappの部分はDockerfileのビルドを実行して、マウント領域の指定をしている


※mysql, nginx, myappの部分は自分で好きな値を設定することができる

### 起動コマンド

* 起動する(下記コマンドでYAMLに記載されたとおりにコンテナの起動をする)

```
docker-compose up -d
```
※-dでバックグラウンドで実行する

* コンテナを確認する

```
docker-compose ps
```

* 起動が確認できたら、コンテナに入ってみる(dockerコマンドで入れる)

```
docker exec -it test-mysql /bin/bash
mysql -uroot -ppass
show databases ;
```

* Nginxが正常に動いていることも確認する(ポートフォワーディングしているため、下記にアクセス)

```
http://localhost:8080/
```

* ボリュームができていることも確認する

```
docker volume ls
```

* コンテナの停止、再開

```
docker-compose stop
docker-compose start
```

* コンテナの停止と削除をする

```
docker-compose down
```
