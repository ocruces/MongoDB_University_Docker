#!/bin/bash

mongod --bind_ip "127.0.0.1,192.168.103.100" -f /data/mongod-repl-1.conf
mongod --bind_ip "127.0.0.1,192.168.103.100" -f /data/mongod-repl-2.conf
mongod --bind_ip "127.0.0.1,192.168.103.100" -f /data/mongod-repl-3.conf
sleep 365d