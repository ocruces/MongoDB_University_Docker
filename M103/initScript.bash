#!/bin/bash

mongod --bind_ip "127.0.0.1,192.168.103.100" -f /data/mongod.conf
sleep 365d