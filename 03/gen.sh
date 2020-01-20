#!/bin/bash

curl -X POST -H "Content-Type application/json" -H "Accept: application/json" --user "$CODESHIP_USERNAME:$CODESHIP_PASSWORD" https://api.codeship.com/v2/auth

