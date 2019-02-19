FROM alpine:3.9

RUN apk add --no-cache python py-paramiko build-base python2-dev openssl-dev linux-headers libffi-dev && \
    python -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip install --upgrade pip setuptools && \
    pip install -U six certifi && \
    pip install \
        elasticsearch-dsl==5.4.0 \
        future  \
        jinja2  \
        python-cinderclient \
        python-glanceclient \
        python-novaclient \
        python-keystoneclient \
        python-neutronclient \
        openshift openstacksdk \
        py2-ipaddress \
        pyvmomi \
        PyYAML \
        robotframework \
        robotframework-sshlibrary \
        python-qpid-proton \
        tabulate \
        vspk==5.3.2 && \
    rm -r /root/.cache

ENV NUAGE_RELEASE 5.3.2
