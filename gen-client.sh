#!/bin/sh
path=$1
openssl genrsa -out $path.key 2048
openssl req -new -key $path.key -out $path.csr
openssl x509 -req -days 365 -in $path.csr -CA root.pem -CAkey root.key -set_serial 01 -out $path.crt
