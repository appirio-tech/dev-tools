#!/usr/bin/env bash
clear
source banner.sh

echo "Stopping ap-work-microservice..."
docker stop ap-work-microservice > /dev/null
docker rm ap-work-microservice > /dev/null

echo "Stopping Zookeeper / Kafka..."
# Stop the Zookeeper and Kafka cluster used for inter service communication and clean up
docker stop kafka > /dev/null
docker rm kafka > /dev/null

echo "Stopping DynamoDB..."
# Stop the DynamoDB local instance and clean up
# source ./ap-work-microservice/model/delete-tables.sh
docker stop dynamodb > /dev/null
docker rm dynamodb > /dev/null

echo "Services stopped successfully."