#!/bin/bash

REMOTE_HOST=hetzner

python parser/md.py
python generate.py
rsync -avP --delete ./dist/ ${REMOTE_HOST}:/root/homepage/dist
rsync -avP ./docker-compose.yml ${REMOTE_HOST}:/root/homepage/

if [ "$1" = "--restart" ]; then
  ssh ${REMOTE_HOST} "cd /root/homepage && docker-compose down && docker-compose up -d"
fi
