# pull official base image
FROM python:3.9.5-slim-buster

# install system dependencies
RUN apt-get update

# install system dependencies
# RUN apt-get update \
#     && apt-get -y install gcc make

# # install google chrome
# RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
# RUN sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
# RUN apt-get -y update
# RUN apt-get install -y google-chrome-stable

# # install chromedriver
# RUN apt-get install -yqq unzip
# RUN wget -O /tmp/chromedriver.zip http://chromedriver.storage.googleapis.com/`curl -sS chromedriver.storage.googleapis.com/LATEST_RELEASE`/chromedriver_linux64.zip
# RUN unzip /tmp/chromedriver.zip chromedriver -d /usr/local/bin/

# set work directory
WORKDIR /var/www

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# copy project
COPY . /var/www/

# install dependencies
RUN pip install -r $PWD/requirements.txt

ENV FLASK_APP __init__.py

EXPOSE 5000

CMD ["python", "-m", "flask", "run"]

USER $user
