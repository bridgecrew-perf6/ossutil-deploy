#!/bin/sh -l

touch /root/ossutilconfig
echo "[Credentials]
        endpoint = $1
        accessKeyID = $4
        accessKeySecret = $5
        " >> /root/ossutilconfig
# ossutil config -e $1 -i $4 -k access-key-secret: $5
ossutil cp -rfu $2 $3
