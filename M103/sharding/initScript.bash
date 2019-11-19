#!/bin/bash

# Start config servers
mongod --bind_ip "127.0.0.1,192.168.103.100" -f /data/csrs_1.conf
mongod --bind_ip "127.0.0.1,192.168.103.100" -f /data/csrs_2.conf
mongod --bind_ip "127.0.0.1,192.168.103.100" -f /data/csrs_3.conf

# Start data servers shard 1
mongod --bind_ip "127.0.0.1,192.168.103.100" -f /data/mongod-repl-1.conf
mongod --bind_ip "127.0.0.1,192.168.103.100" -f /data/mongod-repl-2.conf
mongod --bind_ip "127.0.0.1,192.168.103.100" -f /data/mongod-repl-3.conf

# Start data servers shard 2
mongod --bind_ip "127.0.0.1,192.168.103.100" -f /data/mongod-repl-4.conf
mongod --bind_ip "127.0.0.1,192.168.103.100" -f /data/mongod-repl-5.conf
mongod --bind_ip "127.0.0.1,192.168.103.100" -f /data/mongod-repl-6.conf

sleep 365d