# Bitcore for Docker

A simple Docker image of bitcore; suitable for learning bitcoin using regtest or testnet.

## Quick Start

 docker volume create --name=bitcored-data
 docker run -v bitcored-data:/root/.bitcore --name=bitcored -p 3001:3001 \
     chaintope/bitcore
