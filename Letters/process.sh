#!/bin/bash

echo 'create table recepients (recepient text not null, address text not null, zip integer, copies integer default 1, phony integer default 0);'

while read p; do
	recepient=$(echo $p | cut -f1 -d'[' | xargs)
	fulladdr=$(echo $p | cut -f2 -d'[' | cut -f1 -d']' | xargs)
	addr=$(echo $fulladdr | cut -f1 --complement -d ',' | xargs)
	index=$(echo $fulladdr | cut -f1 -d ',' | xargs)
	copies=$(echo $p | cut -f2 -d']' | tr -dc '0-9')
	echo "insert into recepients(recepient,zip,address,copies) values('$recepient',$index,'$addr',$copies);"
done < spam.raw
