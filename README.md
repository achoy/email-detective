# email-detective
python based email searcher

## Goals

1. Build a JWT app
  - REST based django server
2. Allow search/filtering email from email headers
3. Access email via IMAP apis
  - gmail account
4. Run using docker containers: nginx-proxy, letsencrypt, python-server, mongodb

## Setup Environment

- create project templates, Pipfile, and virtualenv

```shell
# create Pipfile and environment
cd email-detective
pipenv install djangorestframework

# Switch to virtualenv
pipenv shell
pipenv install markdown
pipenv install django-filter
pipenv install djongo

pip freeze > requirements.txt
 
```
