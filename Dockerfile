FROM python:3.7-alpine

LABEL maintainer="httprunner Maintainers <zhurong@qq.com>"
WORKDIR /opt
COPY . /opt
RUN apk add --no-cache gcc \
    libc-dev \
    make \
    && pip install --user poetry && \
    poetry install && \
    poetry run python -m unittest discover
#CMD ["nginx", "-g", "daemon off;"]
