#!/usr/bin/env bash
clear
source banner.sh

echo "Starting Zookeeper / Kafka..."
# Run the Zookeeper and Kafka cluster used for interservice communication
docker run -d --name kafka -p 2181:2181 -p 9092:9092 --env ADVERTISED_HOST=`boot2docker ip` --env ADVERTISED_PORT=9092 spotify/kafka

echo "Starting DynamoDB..."
# Start the AWS DynamoDB local instance
docker run -d --name dynamodb -p 8000:8000 deangiberson/aws-dynamodb-local
source ./ap-work-microservice/model/create-tables.sh

echo "Starting latest ap-work-microservice..."
#docker run -d --name ap-work-microservice -p 8081:8080 appiriodevops/ap-work-microservice:latest

echo "Services started successfully."