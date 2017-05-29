FROM alpine:3.6

RUN apk add --no-cache python && \
    python -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip install --upgrade pip setuptools && \
    pip install robotframework vspk==5.0.1 pyyaml py2-ipaddress jinja2 robotframework-sshlibrary && \
    rm -r /root/.cache
