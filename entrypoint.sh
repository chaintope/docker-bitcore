#!/bin/bash
set -e

if [ -v 'BITCOIN_NETWORK' ]; then 
cat << EOS > ~/.bitcore/bitcore-node.json
{
  "network": "${BITCOIN_NETWORK}",
  "port": 3001,
  "services": [
    "bitcoind",
    "web",
    "insight-api",
    "insight-ui"
  ],
  "servicesConfig": {
    "bitcoind": {
      "spawn": {
        "datadir": "/root/.bitcore/data",
        "exec": "/usr/local/lib/node_modules/bitcore/node_modules/bitcore-node/bin/bitcoind"
      }
    }
  }
}
EOS
fi

exec "$@"