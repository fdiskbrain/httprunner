FROM python:3.7-alpine

LABEL maintainer="NGINX Docker Maintainers <docker-maint@nginx.com>"
WORKDIR /opt
COPY . /opt
RUN pip install --user poetry && \
    poetry install && \
    poetry run python -m unittest discover
#CMD ["nginx", "-g", "daemon off;"]
