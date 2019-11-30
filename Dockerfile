FROM alpine:3.9

RUN apk add --no-cache python py-paramiko build-base python2-dev openssl-dev libffi-dev linux-headers && \
    python -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip install --upgrade pip setuptools && \
    pip install -U six certifi && \
    pip install \
        elasticsearch-dsl==5.4.0\
        cryptography==2.4.2\
        future  \
        jinja2  \
        openshift==0.8.9 \
        openstacksdk \
        py2-ipaddress \
        pyvmomi \
        PyYAML \
        robotframework \
        robotframework-sshlibrary \
        python-qpid-proton \
        stcrestclient \
        tabulate \
        netmiko \
        coloredlogs \
        vspk==6.0.3 && \
    rm -r /root/.cache

ENV NUAGE_RELEASE 6.0.3
