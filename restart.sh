docker network prune -f
docker-compose -f down --remove-orphans
docker-compose -f up -d
