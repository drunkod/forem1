#!/bin/bash
set -e

source scripts/services.env

while [[ "$(curl -s -o /dev/null -w ''%{http_code}'' http://10.6.2.153:80)" != "200" ]]
do
	echo "waiting for Rails application"
	sleep 10
done
bundle exec sidekiq -c 1
