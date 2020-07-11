docker network create -d overlay backend
docker network create -d overlay frontend

docker service create --name vote -p 80:80 --network frontend --replicas 2 nattesharan/votingapp

docker service create --name redis --network frontend redis

docker service create --name db -e POSTGRES_HOST_AUTH_METHOD=trust --network backend --mount type=volume,source=db-data,target=/var/lib/postgresql/data postgres

docker service create --name worker --network frontend --network backend nattesharan/votingappworker

docker service create --name result --network backend -p 3000:80 nattesharan/votingapp_result


