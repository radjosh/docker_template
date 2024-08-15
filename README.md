clone repo
tweak Dockerfile for your uses (e.g. python or ubuntu or node or etc)

############## build image
docker build -t my-image --no-cache .

############## build container
docker run -d -it -p 8000:3000 -v /run/host-services/ssh-auth.sock:/ssh-agent -e SSH_AUTH_SOCK='/ssh-agent' -v ./share:/root/share -v ~/.gitconfig:/etc/gitconfig --name my-container my-image


############## use container with either vs code or via docker exec
___________________________

############## other commands:

docker stop
docker rm my-container
docker rmi my-image


This setup gives you a dir to share between local and docker container
It also lets the container piggyback on the local machine's ssh (for git)
