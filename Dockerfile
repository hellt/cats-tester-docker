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
        python-cinderclient \
        python-glanceclient \
        python-novaclient \
        python-keystoneclient \
        python-neutronclient \
        openshift openstacksdk \
        py2-ipaddress \
        pyvmomi \
        netmiko==2.4.2 \
        PyYAML \
        robotframework \
        robotframework-sshlibrary \
        python-qpid-proton \
        tabulate \
        coloredlogs \
        https://github.com/krissterckx/nuage-openstack-neutron/releases/download/release-5.3.3-queens/nuage_openstack_neutronclient-6.5.0.5.3.3_99_nuage-py2-none-any.whl \
        vspk==5.4.1 && \
    rm -r /root/.cache

ENV NUAGE_RELEASE 5.4.1
