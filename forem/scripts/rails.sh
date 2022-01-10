#!/bin/bash
set -e

source scripts/services.env

# echo "Running db:setup"
#SEEDS_MULTIPLIER=1 bin/rails db:seed
#bin/rails  db:migrate

echo "Running app_initializer:setup"
until bin/rails app_initializer:setup
do
	echo "waiting before retrying app intialization"
	sleep 300
done

echo "Running forem:setup"
bin/rails forem:setup

echo "Starting the application server"
bin/rails s
