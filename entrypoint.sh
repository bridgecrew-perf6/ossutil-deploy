#!/bin/sh -l

ossutil config -e $1 -i $4 -k access-key-secret: $5
ossutil cp -rfu $2 $3
