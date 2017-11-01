
docker-compose build

//only build one service
docker-compose build mongo
--

//create and start containers
docker-compose up
//do not recreate services that node depends on
docker-compose up --no-deps node

--

docker-compose down
//remove all images with all volumes
docker-compose down --rmi all --volumes

--

docker-compose logs
docker-compose ps
docker-compose stop
docker-compose start
docker-compose rm

--

