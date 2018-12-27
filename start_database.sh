#/usr/bin/env bash
docker run --name playground -p 5432:5432 -e POSTGRES_USER=playground -e POSTGRES_PASSWORD=playground -d postgres:9-alpine
