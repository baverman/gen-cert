#!/bin/bash

path=$1
shift
host=$1

export SAN=DNS:$(IFS=,;echo "$*")

openssl genrsa -out ${path}.key 2048
openssl req -new -key ${path}.key -out ${path}.csr \
            -subj "/C=RU/CN=${host}" -config san.cnf -reqexts san
openssl x509 -req -in ${path}.csr -CA root.pem \
             -CAkey root.key -CAcreateserial -extfile san.cnf -extensions san \
             -CAserial ${path}.srl -out ${path}.crt -days 365 -sha256
