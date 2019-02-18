#!/bin/bash

docker build -t test_apisprout . \
	&& docker run \
	-p 80:8080 \
	-p 8000:8000 \
	-v $PWD/swagger.yml:/usr/share/nginx/html/swagger.yml \
	-it \
	test_apisprout /usr/share/nginx/html/swagger.yml

