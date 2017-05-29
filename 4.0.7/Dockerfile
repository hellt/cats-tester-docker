FROM alpine:3.6

RUN apk add --no-cache python py-paramiko && \
    python -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip install --upgrade pip setuptools && \
    pip install robotframework vspk==4.0.7 pyyaml py2-ipaddress jinja2 robotframework-sshlibrary && \
    rm -r /root/.cache
