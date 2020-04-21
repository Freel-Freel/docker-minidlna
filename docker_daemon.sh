#!/bin/bash
echo -e "Start background docker minidlna"

docker run  -d --rm \
            -p 8200:8200/tcp \
            --name Minidlna minidlna
