# 開発環境をDockerで作成する

## 想定の環境

* python3系最新
* MySQL最新
* Django最新
* Apache or Nginx

## 環境インストール

```
$ sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common
$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
$ sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
$ sudo apt-get update
$ sudo apt-get -y install docker-ce
```

```
$ sudo pip3 install -U docker-compose
```

## 実行

* 起動する

```
docker images
docker build .
```

* 状態をコミットする

```
docker ps -a
docker commit {CONTAINER ID}
```

* イメージを削除する

```
docker images
docker rmi {IMAGE ID}
```

* コンテナの削除

```
docker ps -a
docker rm {CONTAINER ID}
```

* コンソールに入る

```
docker images
docker run -i -t -d {IMAGE ID} /bin/bash
docker attach {RUN ID}
```

