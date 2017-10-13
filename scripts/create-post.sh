#!/bin/bash

# API="${API_ORIGIN:-http://localhost:4741/}"

API="${API_ORIGIN:-https://backendcapstone.herokuapp.com}"
URL_PATH="/posts"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
        "title": "'"${TEXT}"'",
        "body": "'"${TEXT}"'"
      }
    }'

echo
