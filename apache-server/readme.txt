# /conf and /htdocs directories contains the necessary files

# docker run commands for load balancer:

# master - dockerc
~/dockerc$ docker run -p 81:80/tcp --rm --name app81 -v "$PWD":/usr/local/apache2/ httpd:latest

# node 1 - dockera 
~/dockera/apache2$ docker run -p 82:80/tcp --rm --name app82 -v "$PWD":/usr/local/apache2/ httpd:latest

# node 2 - dockerb
~/dockerb/apache2$ docker run -p 83:80 --rm --name app83 -v "$PWD":/usr/local/apache2/ httpd:latest 

# node 3 - dockerd - available only for master node, custom error page created for any other request
~/dockerd/apache2$ docker run -p 84:80 --rm --name app84 -v "$PWD":/usr/local/apache2 httpd:latest

#docker cp command
docker cp 12b:/usr/local/apache2 ~/dockerb