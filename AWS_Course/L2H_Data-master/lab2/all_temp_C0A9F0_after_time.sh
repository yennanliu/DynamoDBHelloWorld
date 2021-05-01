#!/bin/bash

# All Temperature in C0A9E0 after time (ObsTime) 16 (Contain 16)

aws dynamodb scan \
     --table-name WeatherData \
     --filter-expression "StationId = :stationId and ObsTime = :obsTime" \
     --expression-attribute-values '{  ":stationId": {"S": "C0A9F0"}, ":obsTime": {"N":"16"} }'  