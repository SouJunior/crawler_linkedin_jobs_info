# pull official base image
FROM python:3.8.2-alpine

RUN apk add --virtual .build-dependencies \
            --no-cache \
            python3-dev \
            build-base \
            linux-headers \
            pcre-dev

RUN apk add --no-cache pcre

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
COPY . /app

WORKDIR /app

RUN pip install -r requirements.txt

RUN apk del .build-dependencies && rm -rf /var/cache/apk/*

USER $user

EXPOSE 5000

CMD ["uwsgi", "--ini", "wsgi.ini"]
