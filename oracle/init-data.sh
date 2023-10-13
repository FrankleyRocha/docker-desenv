#!/bin/bash

#sudo rm -rf admin oradata
#mkdir admin oradata
#git checkout sqlnet.ora
#sudo chown 54321:54321 -R oradata admin sqlnet.ora
#sudo chmod 777 -R oradata admin sqlnet.ora

docker volume rm oracle-data
#docker volume rm oracle-dpdump
docker volume create --name=oracle-data
#docker volume create --name=oracle-dpdump
