FROM python:3.8-alpine
ENV PYTHONUNBUFFERED=1
RUN pip install pipenv
WORKDIR /Pro
COPY . /Pro/
RUN apk update
RUN apk add bash
RUN apk add --no-cache --update python3
RUN apk add --no-cache postgresql-libs
RUN apk add --no-cache --virtual .build-deps gcc musl-dev postgresql-dev
COPY Pipfile Pipfile.lock /Pro/
RUN pipenv install --system --dev
COPY ./docker-entrypoint.sh /Pro/docker-entrypoint.sh
RUN chmod a+x /Pro/docker-entrypoint.sh
ENTRYPOINT ["./docker-entrypoint.sh"]