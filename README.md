# Docker_tutorial
# List of Docker commands
_________________________________________________________________________________________________
# Genetal commands
- docker run imagename
    > <p dir="rtl" align="right">bir image run etmek icin</p>

- docker ps
    > <p dir="rtl" align="right">calisan docker kontainerleri gostermek</p>

- docker ps -a
    > <p dir="rtl" align="right">tum konteinerleri hatta exit olanlari gostermek</p>

- docker rm containerID
    > <p dir="rtl" align="right">calismayan konteineri silmek otomatik calistirdiktan sonra silinmesi icin docker run --rm</p>

- docker container prune
    > <p dir="rtl" align="right">tum gecmisteki docker konteinerleri silmek icindir</p>

- docker rmi imageID
    > <p dir="rtl" align="right">bir image silmek icindir bunun icin calisan kontaineri silmek gerek</p>

- docker kill containerID
    > <p dir="rtl" align="right">docker calisan containeri silmek </p>
_________________________________________________________________________________________________

- docker build -t imageName:tagVersion
    > <p dir="rtl" align="right">image yaratmak icin image ismi ve versiyonun yazmak lazim</p>

- docker run -d -p port:port 'imageName':'imageVersion'
    > <p dir="rtl" align="right">imagein calismasi icin port tanimlamamiz gerek</p>
__________________________________________________________________________________________________
- docker login -u userName
    > <p dir="rtl" align="right">dockerhub girmek icin username password</p>

- docker tag imageId userName/yourDesiredNameForImage
    > <p dir="rtl" align="right">daha once yaratmis oldugumuz image icin bir tagName vermek</p>

- docker push userName/yourDesiredNameForImage
    > <p dir="rtl" align="right">kendi dockerhub hesabiniza yuklemek icindir</p>
___________________________________________________________________________________________________
- docker pull userName/yourDesiredNameForImage
    > <p dir="rtl" align="right">bir imagei dockerhubdan almak icin. bunun icin once mevcut image silimesi gerek</p>
___________________________________________________________________________________________________
 # Build docker image
 
 Build docker image:
 
 `sudo docker build -t myapp .`
 
 Here is code for running docker image:
 
 `sudo docker run -it -p 8081:8000 myapp`
 __________________________________________________________________________________________________
# Create network

For creating netwrok:
 
 ` sudo docker network create mynetwork`
 
 connecting docker to network:
 
 `sudo docker run -it -p 8081:8000 --network=mynetwork myapp`
 
 `sudo docker run -it -p 5555:5432 --network=mynetwork postgres`
 ___________________________________________________________________________________________________
 # Docker-compose 
 
  build a docker-compose:
 `sudo docker-compose build`
 
 run docker file
 `sudo docker-compose up`
 
 both in one
 `docker-compose up --build`
 
 to run a docker-compose file and migrate it
`sudo docker-compose run ecommerce /usr/local/bin/python manage.py migrate`

to turn off the docker-compose container
`sudo docker-compose down`

to delete unused docker "none" images:
`docker rmi -f $(docker images | grep "<none>" | awk "{print \$3}")`

to find what is in the logger or explore inside the container
`sudo docker exec -it account bash`

  ___________________________________________________________________________________________________
 # Postgres dockerize
 
 to get container ip for pgadmin:

`sudo docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' postgres`

to execute a command in a running container

`sudo docker exec -it myapp bash`
 
 
 

