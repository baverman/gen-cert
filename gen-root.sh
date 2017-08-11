#!/bin/sh
openssl genrsa -out root.key 2048
openssl req -x509 -new -nodes -key root.key -sha256 -days 365 -out root.pem
