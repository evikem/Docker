In Jenkins Gradle project config:
Execute shell:
docker-compose -H 172.22.0.1:4243 -p jcompose2 -f jcompose2/docker-compose.yml start tomcat7
#!/bin/sh 
until [ -f list ]
    do
     wget --user admin --password admin http://jcompose2_tomcat7_1:8080/manager/text/list
     echo 'sleep 1'
     sleep 1
done

rm -rf list

exit 0