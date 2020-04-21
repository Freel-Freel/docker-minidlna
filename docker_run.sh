#!/bin/bash
echo -e "Start docker minidlna"

docker run  -i -t --rm \
            -p 8200:8200/tcp \
            --name Minidlna minidlna
