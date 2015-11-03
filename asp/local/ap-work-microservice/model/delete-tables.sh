#!/usr/bin/env bash

DYNAMODB_HOST=`boot2docker ip`
DYNAMODB_URL=http://$DYNAMODB_HOST:8000
echo $DYNAMODB_URL

# clean up existing tables (often necessary after container restart)
echo "Deleting WorkFile table"
aws dynamodb --profile default --endpoint-url $DYNAMODB_URL delete-table --table-name WorkFile

echo "Deleting Work table"
aws dynamodb --profile default --endpoint-url $DYNAMODB_URL delete-table --table-name Work

echo "Deleting WorkEvent table"
aws dynamodb --profile default --endpoint-url $DYNAMODB_URL delete-table --table-name WorkEvent

echo "Deleting WorkStep table"
aws dynamodb --profile default --endpoint-url $DYNAMODB_URL delete-table --table-name WorkStep