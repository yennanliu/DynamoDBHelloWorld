#!/bin/bash

# All RH at time (ObsTime) 13

# https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html
# https://docs.aws.amazon.com/cli/latest/reference/dynamodb/query.html

aws dynamodb scan \
     --table-name WeatherData \
     --filter-expression "ObsTime = :obsTime" \
     --expression-attribute-values '{ ":obsTime": {"N":"13"} }'