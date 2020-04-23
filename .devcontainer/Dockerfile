FROM python:3.7-alpine

LABEL maintainer="httprunner Maintainers <zhurong@qq.com>"
WORKDIR /opt
COPY . /opt
RUN echo "start" \
    && sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories \
    && apk add --no-cache --virtual .build \
    gcc \
    libc-dev \
    libffi-dev \
    openssl-dev \
    make \
    bash \
    git \
    && pip install poetry \
    && poetry install \
#    && poetry run python -m unittest discover \
#    && apk del .build
# CMD [ "sh", "-c", "poetry run python -m httprunner -h" ]
