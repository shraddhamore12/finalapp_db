#!/bin/bash

if [$(sudo docker container ls -q --filter name=mydb_c)!='']; then
# sudo docker container stop mydb_c
sudo docker container rm mydb_c --force
fi

if [$(sudo docker image ls -q --filter reference=myappdb)!='']; then
sudo docker image rm myappdb
fi

sudo docker image build . -t myappdb

sudo docker container run -itd -p 9099:3306 --name mydb_c myappdb
