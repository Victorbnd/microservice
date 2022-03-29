#!/bin/bash

echo "-------------------------------Docker Container Services-------------------------------"

echo "Services: Start Docker (start), Stop Docker (stop) and Show Docker Status (status)"

echo "Enter the service you want"
read service

function start() {
    echo "Building container"
    docker build -t flask .
    echo "Starting container"
    docker run -d --rm -p 8080:8080 --name flask flask
}

function stop() {
    docker stop flask
    echo "docker stopped"
}

function status() {
    echo "docker status:"
    docker container inspect flask | grep Status
    echo "docker container info:"
    docker ps -a -f  name=flask
}

case $service in
    start)
        start;;
    stop)
        stop;;
    status)
        status;;
    *)
        echo "This service does not exist"
esac