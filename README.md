# dock-bitcoind
A dockerized bitcoin core rpc server

## How to deploy
1. clone this repo
```git clone https://github.com/jenn0pal/dock-bitcoind.git```
2. edit ```bitcoin.conf``` and change **rpcuser** and **rpcpassword**
3. run ```docker-compose up```

## Update config
1. Edit ```bitcoin.conf```
2. Run ```docker-compose build``` and wait until build is finished
3. Run ```docker-compose up```
