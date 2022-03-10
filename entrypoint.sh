#!/bin/sh -l

touch /root/ossutilconfig
echo "[Credentials]
        endpoint = $1
        accessKeyID = $4
        accessKeySecret = $5
        " >> .ossutilconfig
ossutil config -e $1 -i $4 -k access-key-secret: $5
ossutil -c .ossutilconfig cp -rfu $2 $3
