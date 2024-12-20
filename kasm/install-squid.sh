#!/bin/bash
EMAIL="your-email@example.com"
PREFIX="your-prefix"
DOMAIN="your-domain"
ROOT="your-root"


cd /opt/btpi-gate
git clone https://bitbucket.org/kasmtech/kasm_squid/src/master/

sudo ./install_redirector.sh -k https://kasm.{$DOMAIN}.{$ROOT}

certbot certonly --manual --preferred-challenges=dns --email {$EMAIL} --server https://acme-v02.api.letsencrypt.org/directory -d '{$PREFIX}-gate.{$DOMAIN}.{$ROOT}' -d '{$PREFIX}-waf.{$DOMAIN}.{$ROOT}' -d '{$PREFIX}-grr-g.{$DOMAIN}.{$ROOT}' -d '{$PREFIX}-mgmt.{$DOMAIN}.{$ROOT}'