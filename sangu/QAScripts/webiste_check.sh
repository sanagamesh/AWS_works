#!/bin/bash
set +x
if [[ -z "$1" ]] ; then
	echo "Usage: <URL>"
	exit 1
fi

URL=$1

STATUS_CODE=$(curl -s -o /dev/null -w "%{http_code}" "$URL")

if [ "$STATUS_CODE" -eq 200 ]; then
   echo "$(curl -o /dev/null -s -w "HTTP Code: %{http_code}\nTime Total: %{time_total}\nSize Download: %{size_download}\n" "$URL")"

else
  echo "The site $URL is not accessible (Status Code: $STATUS_CODE)"
fi
