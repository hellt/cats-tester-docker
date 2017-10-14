FROM alpine:3.6

RUN apk add --no-cache python py-paramiko && \
    python -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip install --upgrade pip setuptools && \
    pip install vspk==4.0.11 robotframework robotframework-sshlibrary pyvmomi pyyaml py2-ipaddress jinja2 future && \
    rm -r /root/.cache

ENV NUAGE_RELEASE 4.0.11
