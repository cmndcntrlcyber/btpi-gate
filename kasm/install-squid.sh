#!/bin/bash
EMAIL="your-email@example.com"
PREFIX="your-prefix"
DOMAIN="your-domain"
ROOT="your-root"


cd /opt/btpi-nexus
git clone https://bitbucket.org/kasmtech/kasm_squid/src/master/

sudo ./install_redirector.sh -k https://kasm.company.internal

certbot certonly --manual --preferred-challenges=dns --email {{$EMAIL}} --server https://acme-v02.api.letsencrypt.org/directory --agree-tos -d '{{$PREFIX}}-gate.{{$DOMAIN}}.{{$ROOT}}' 