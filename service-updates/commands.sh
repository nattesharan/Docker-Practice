docker service create --name nginx -p 3000:80 nginx:1.13.7

docker service scale nginx=5

docker service update --image nginx:1.13.6 nginx

docker service update --publish-rm 3000 --publish-add 80:80 nginx

# for forcing reboot of all the services run

docker service update --force nginx