FROM python:alpine

ARG CLI_VERSION=1.16.198

RUN apk -uv add --no-cache groff jq less git && \
    pip install --no-cache-dir awscli==$CLI_VERSION

WORKDIR /aws

CMD sh
