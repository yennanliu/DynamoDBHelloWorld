#!/bin/bash
aws dynamodb create-table --cli-input-json '
{
    "TableName": "MovieData",
    "BillingMode": "PROVISIONED",
    "ProvisionedThroughput": {
        "ReadCapacityUnits": 5,
        "WriteCapacityUnits": 5
    },
    "KeySchema": [
        {
            "AttributeName": "request_id",
            "KeyType": "HASH"
        },
        {
            "AttributeName": "startDate",
            "KeyType": "RANGE"
        }
    ],
    "AttributeDefinitions": [
        {
            "AttributeName": "user_id",
            "AttributeType": "S"
        },
        {
            "AttributeName": "startDate",
            "AttributeType": "N"
        }

    ]
}
'

sleep 30

for i in {1..13};
do
    aws dynamodb batch-write-item --request-items file://MovieData$i.json
done
