NUAGE_VERSION="$1"
VSPK_VERSION="$2"

[[ -z "$NUAGE_VERSION" ]] && { echo "Error: Nuage version must be passed as a first argument"; exit 1; }

[[ -z "$VSPK_VERSION" ]] && { VSPK_VERSION=$NUAGE_VERSION; }

CATS_DEP_PACKAGES="future jinja2 python-cinderclient python-glanceclient python-novaclient python-keystoneclient python-neutronclient openstacksdk py2-ipaddress pyvmomi PyYAML robotframework robotframework-sshlibrary tabulate vspk==$VSPK_VERSION"

git checkout -b $NUAGE_VERSION

cat << EOF > Dockerfile
FROM alpine:3.6

RUN apk add --no-cache python py-paramiko build-base python2-dev openssl-dev && \\
    python -m ensurepip && \\
    rm -r /usr/lib/python*/ensurepip && \\
    pip install --upgrade pip setuptools && \\
    pip install -U six && \\
    pip install $CATS_DEP_PACKAGES && \\
    rm -r /root/.cache

ENV NUAGE_RELEASE $NUAGE_VERSION
EOF

git add Dockerfile
git commit -m "added $NUAGE_VERSION"
git push origin $NUAGE_VERSION
