python parser/md.py
python generate.py
rsync -avP --delete ./dist/ hetzner:~/homepage/dist
rsync -avP ./docker-compose.yml hetzner:~/homepage/