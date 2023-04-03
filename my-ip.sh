#!/usr/bin/env bash

## Find last ip
# curl https://api.myip.com

## Find public ip v4
dig -4 TXT +short o-o.myaddr.l.google.com @ns1.google.com | awk -F'"' '{ print $2}'

## Find public ip v6
# dig -6 TXT +short o-o.myaddr.l.google.com @ns1.google.com | awk -F'"' '{ print $2}'

