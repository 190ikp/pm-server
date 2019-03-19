#!bin/bash

cd /usr/local/etc
mkdir ca
chmod 600 ca
cd ca
openssl genrsa -out ca.key -aes256 2048

openssl req -new -x509 -key -ca.key -aes256 -days 3650 -extensions v3_ca -out ca.pem