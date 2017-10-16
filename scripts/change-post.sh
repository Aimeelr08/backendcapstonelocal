#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
# API="${API_ORIGIN:-https://backendcapstonelocal.herokuapp.com}"

URL_PATH="/change-post"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "posts": {
      "body": "'"${BODY}"'",
      "newBody": "'"${NWBOD}"'"
    }
  }'

echo
