#!/bin/bash
# API="${API_ORIGIN:-http://localhost:4741/}"
API="${API_ORIGIN:-https://backendcapstone.herokuapp.com}"
URL_PATH="/posts"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --data '{
      "title": "'"${TEXT}"'",
      "body": "'"${TEXT}"'"
    }
  }'

echo
