FROM python:3.7-alpine

WORKDIR /app

RUN pip3 install pipenv
COPY Pipfile* ./
RUN pipenv install
COPY app/ .

CMD pipenv run python app.py
