#!/bin/bash

if [ $# == 1 ]
then
docker run -it --rm \
      -v $(pwd)/certs:/etc/letsencrypt \
      -v $(pwd)/certs-data:/data/letsencrypt \
      certbot/certbot \
      certonly \
      --webroot --webroot-path=/data/letsencrypt \
      -d $1
elif [ $# == 2 ]
then
docker run -it --rm \
      -v $(pwd)/certs:/etc/letsencrypt \
      -v $(pwd)/certs-data:/data/letsencrypt \
      certbot/certbot \
      certonly \
      --webroot --webroot-path=/data/letsencrypt \
      -d $1 -d $2
else
    echo "Please input domain arguments"
fi
