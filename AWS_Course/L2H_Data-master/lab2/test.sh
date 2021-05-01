#!/bin/bash

# Read Throttle
for i in {1..100};
do
    echo 'i = ' $i

    aws dynamodb scan \
     --table-name WeatherData \
     --filter-expression "StationId = :stationId" \
     --expression-attribute-values '{":stationId":{"S":"C0A9F0"}}'
done


# Weite Throttle
for i in {1..100};
do
    aws dynamodb batch-write-item --request-items file://WeatherData3.json
done