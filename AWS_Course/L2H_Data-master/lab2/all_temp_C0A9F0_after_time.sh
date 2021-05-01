#!/bin/bash

aws dynamodb scan \
     --table-name WeatherData \
     --filter-expression "StationId = :stationId and ObsTime = :obsTime" \
     --expression-attribute-values '{":stationId":{"S":"C0A9F0"}}, {":obsTime":{"S": "16"}}'