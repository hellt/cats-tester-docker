FROM alpine:3.10.2

RUN apk add --no-cache py3-paramiko openssh-client sshpass py3-lxml build-base python3 python3-dev openssl-dev libffi-dev  && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    pip3 install -U six certifi && \
    pip3 install \
        jinja2  \
        pyasn1==0.4.6 \
        PyYAML \
        requests \
        robotframework \
        robotframework-sshlibrary \
        elasticsearch-dsl==5.4.0\
        cryptography==2.4.2\
        future  \
        openshift==0.8.9\
        openstacksdk \
        pyvmomi \
        python-qpid-proton \
        tabulate \
        stcrestclient \
        textfsm \
        netmiko \
        coloredlogs \
        vspk==6.0.3 && \
    rm -r /root/.cache && \
    ln -s /usr/bin/python3 /usr/bin/python

ENV NUAGE_RELEASE 6.0.3
