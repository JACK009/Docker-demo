//run docker on port 80 with current host location and /www source location
docker run -p 80:80 -v $(pwd):/var/www node

docker run -p 80:80 -v $(pwd):/var/www -w "/var/www" node npm start

--

//file
docker build -f Dockerfile


//file + tag
docker build -f Dockerfile -t mm/node .


docker run -d -p 8080:8080 mm/node

//publish image to docker hub
docker push username/node

--

//custom container network with bridge driver (communicate between containers)
docker network create --driver bridge isolated_network
docker run -d --net=isolated_network --name mongodb mongo

--

//show networks
docker network create --driver bridge isolated_network
docker network ls

//show network info (json)
docker network inspect isolated_network

//run container in network
docker run -d --net=isolated_network --name mongodb mongo
docker run -d --net=isolated_network --name nodeapp -p 80:80 mm/node

//fill in mongodb database
docker exec nodeapp node dbSeeder.js

--

//docker compose
