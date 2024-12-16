#!/bin/bash

rm db.sqlite3
rm -rf ./roseapi/migrations
python3 manage.py migrate
python3 manage.py makemigrations roseapi
python3 manage.py migrate roseapi
python3 manage.py loaddata users
python3 manage.py loaddata tokens

