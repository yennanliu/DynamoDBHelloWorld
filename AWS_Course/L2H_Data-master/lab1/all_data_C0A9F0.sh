#!/bin/bash

# http://andy51002000.blogspot.com/2018/08/aws-dynamodb.html

aws dynamodb scan \
     --table-name WeatherData \
     --filter-expression "StationId = :stationId" \
     --expression-attribute-values '{":stationId":{"S":"C0A9F0"}}'