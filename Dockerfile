FROM docker:18.09.5

RUN apk -v --update add \
        python \
        py-pip \
        groff \
        less \
        mailcap \
        curl \
        make \
        ca-certificates \
        openssl \
        jq \
        git && \
    update-ca-certificates && \
    pip install --upgrade awscli==1.16.144 s3cmd==2.0.2 python-magic && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/* && \
    curl -o /usr/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl && \
    chmod +x /usr/bin/kubectl
