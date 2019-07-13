## Dockerfileをつくるでも無い場合の使い捨ての環境を作成するとき

? イメージの検索をする

```
docker search ubuntu
```

? イメージをpullする

```
docker pull ubuntu
```

? コンテナを起動してプロンプトにはいる

```
docker run --name="dev_container" -it ubuntu:latest
```

? そのままでは空っぽなので、パッケージの更新と必要なものをインストールする

```
apt update -y 
apt install -y curl vim git net-tools build-essential
```

? コンテナから抜けて、コミットする(イメージの作成)

```
exit
docker commit dev_container dev_container
```
※ `docker images` で確認できます
※ `docker ps -a` でコンテナを確認できます

? 起動して確認してみる

```
docker run -it dev_container
```

? カレントディレクトリをマウントする

```
docker run -v $PWD:/work it dev_container
```
