# email-detective
python based email searcher

## Goals

1. Build a JWT app
  a. REST based django server
2. Allow search/filtering email from email headers
3. Access email via IMAP apis
  a. gmail account
4. Run using docker containers: nginx-proxy, letsencrypt, python-server, mongodb

## Setup Environment

- Create project templates, Pipfile, and virtualenv

```shell
# create Pipfile and environment
cd email-detective
pipenv install djangorestframework

# Switch to virtualenv
pipenv shell

# Load more libraries
(env) $ pipenv install markdown
(env) $ pipenv install django-filter
(env) $ pipenv install djongo

# Freeze packages
(env) $ pip freeze > requirements.txt

```

- Setup mongo database

- Initialize project site

```shell

# create detective project
(env) $ django-admin startproject detective
(env) $ cd detective
(env) $ python manage.py startapp users

(env) $ python manage.py makemigrations users
(env) $ python manage.py migrate
(env) $ python manage.py createsuperuser

```
