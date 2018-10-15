FROM alpine:3.6

RUN apk add --no-cache python py-paramiko build-base python2-dev openssl-dev linux-headers &&     python -m ensurepip &&     rm -r /usr/lib/python*/ensurepip &&     pip install --upgrade pip setuptools &&     pip install -U six certifi &&     pip install future jinja2 python-cinderclient python-glanceclient python-novaclient python-keystoneclient python-neutronclient openshift openstacksdk py2-ipaddress pyvmomi PyYAML robotframework robotframework-sshlibrary tabulate vspk==5.3.2 && \
    rm -r /root/.cache

ENV NUAGE_RELEASE 5.3.2u1
