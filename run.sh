docker kill $(docker ps -q -a)
docker rm $(docker ps -q -a)
docker rmi newproject
docker build . -t newproject
docker run -it -p 81:80 -d newproject
