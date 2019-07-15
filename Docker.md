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

? 使ったコンテナを削除する

```
docker run --rm -v $PWD:/work it dev_container
```
※--rmをつけないと、runの度にコンテナが残っていきます

? Docker環境のコンテナにSSHする

```
apt install -y openssh-server
/etc/init.d/ssh status
/etc/init.d/ssh start
```
上記のパッケージが無いと、SSHできないため（サービスが起動していないため）インストール必須

```
ssh-keygen -t rsa
cat id_rsa.pub
vi authorised_keys
ssh root@localhost
```
