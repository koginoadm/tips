
[パッケージマネージャを利用した Node.js のインストール _ Node.js](https://nodejs.org/ja/download/package-manager/)
```bash
# Ubuntu 16.04 LTS
sudo apt-get install -y build-essential
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
```


[Ubuntuに最新のNode.jsを難なくインストールする - Qiita](http://qiita.com/seibe/items/36cef7df85fe2cefa3ea)
```bash
# Ubuntu 16.04 LTS
apt-get -y install npm
npm cache clean
npm install n -g
n stable
ln -s /usr/local/bin/node /usr/bin/node
node -v
apt-get -y purge npm
``` 


```bash
mkdir angular2-sandbox && cd $_
npm init -y
npm i -S @angular/{core,common,compiler,platform-browser,platform-browser-dynamic} rxjs@5.0.0-beta.12 zone.js@0.6.21 core-js
npm i -D typescript webpack
```

http://qiita.com/armorik83/items/ae737ab584012a0f5876
