#!/bin/bash
sed \
  -e "s/{MySQL_HOST}/${MYSQL_HOST}/g" \
  -e "s/{MySQL_USER}/${MYSQL_USER}/g" \
  -e "s/{MySQL_PASSWORD}/${MYSQL_PASSWORD}/g" \
  "./aaa/aaa/aaa.ini.template" > "./aaa/aaa/aaa.ini"

sed \
  -e "s/{MySQL_HOST}/${MYSQL_HOST}/g" \
  -e "s/{MySQL_USER}/${MYSQL_USER}/g" \
  -e "s/{MySQL_PASSWORD}/${MYSQL_PASSWORD}/g" \
  -e "s/{SERVER_AAA_IP}/${PUBLIC_IP}/g" \
  "./ccs/ccs/ccs.ini.template" > "./ccs/ccs/ccs.ini"

sed \
  -e "s/{MySQL_HOST}/${MYSQL_HOST}/g" \
  -e "s/{MySQL_USER}/${MYSQL_USER}/g" \
  -e "s/{MySQL_PASSWORD}/${MYSQL_PASSWORD}/g" \
  -e "s/{SERVER_AAA_IP}/${PUBLIC_IP}/g" \
  "./csa/csa/csa.ini.template" > "./csa/csa/csa.ini"

sed \
  -e "s/{MySQL_HOST}/${MYSQL_HOST}/g" \
  -e "s/{MySQL_USER}/${MYSQL_USER}/g" \
  -e "s/{MySQL_PASSWORD}/${MYSQL_PASSWORD}/g" \
  -e "s/{SERVER_AAA_IP}/${PUBLIC_IP}/g" \
  "./dba/dba/dba.ini.template" > "./dba/dba/dba.ini"