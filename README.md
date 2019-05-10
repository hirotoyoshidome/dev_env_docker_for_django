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

## 知識
* ベースにするイメージを選択してコンテナ内で動作を確認してDockerfileに落とし込んで行く

* buildを実施するとイメージが出来上がる
⇒コンテナはイメージから作成する

* runするとコンテナが起動するが、失敗した場合はexitすることで新しい環境でまた始めることができる

* コンテナ内の途中の作業はcommitすることで保存し、その地点から作業を再開することができる

* つまり、最終目標はDockerfileを作成すること

* docker-composeは複数のコンテナから成るサービスを自動で管理とかをするようにYAMLファイルで記述したようにしてくれるもの
⇒　開発環境ではいらないかも


