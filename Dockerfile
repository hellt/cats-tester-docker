FROM alpine:3.6

RUN apk add --no-cache python py-paramiko build-base python2-dev openssl-dev linux-headers && \
    python -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip install --upgrade pip setuptools && \
    pip install -U six certifi && \
    pip install future jinja2 python-cinderclient python-glanceclient python-novaclient python-keystoneclient python-neutronclient openshift openstacksdk py2-ipaddress pyvmomi PyYAML robotframework robotframework-sshlibrary python-qpid-proton tabulate vspk==4.0.11 && \
    rm -r /root/.cache


ENV NUAGE_RELEASE 5.2.3u3
