#!/bin/bash

read -p "URL to check: " url
if curl --output /dev/null --silent --head --fail "$url"; then
  printf '%s\n' "$url exist"
else
  printf '%s\n' "$url does not exist"
fi
