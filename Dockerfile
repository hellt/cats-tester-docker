FROM alpine:3.6

RUN apk add --no-cache python py-paramiko build-base python2-dev openssl-dev && \\
    python -m ensurepip && \\
    rm -r /usr/lib/python*/ensurepip && \\
    pip install --upgrade pip setuptools && \\
    pip install -U six && \\
    pip install $CATS_DEP_PACKAGES && \\
    rm -r /root/.cache

ENV NUAGE_RELEASE 5.3.2u1
