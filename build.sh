#!/usr/bin/env bash
# exit on error
set -o errexit

# Upgrade pip first to ensure wheel support for Pillow
python -m pip install --upgrade pip

pip install -r requirements.txt

python manage.py collectstatic --no-input
python manage.py migrate
