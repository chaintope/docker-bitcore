# Bitcore for Docker
[![Docker Pull](https://img.shields.io/docker/pulls/chaintope/bitcore.svg)](https://hub.docker.com/r/chaintope/bitcore/ )

A simple Docker image of bitcore; suitable for learning bitcoin using regtest or testnet.

## Quick Start

If you would like to use `testnet` or `regtest`, you should define environment variable `BITCOIN_NETWORK` or place your own `bitcore-node.json` file on `/root/.bitcore`. 

    docker volume create --name=bitcored-data
    docker run -v bitcored-data:/root/.bitcore --name=bitcored \
        -p 3001:3001 -e BITCOIN_NETWORK=testnet chaintope/bitcore
