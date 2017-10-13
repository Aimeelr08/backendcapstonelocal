#!/bin/bash
# API="${API_ORIGIN:-http://localhost:4741/}"

API="${API_ORIGIN:-https://backendcapstone.herokuapp.com}"
URL_PATH="/comments"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "comment": {
        "content": "'"${CONTENT}"'",
 }
}'

# {
# "id": 1,
# "content": "comment 1",
#  "post": {
#   "id": 1,
#   "title": "Sample Title 1",
#   "body": "Sample body 1"
#  }
# }


echo
