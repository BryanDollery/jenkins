from jenkins/jenkins:lts-alpine

user root

run apk add --no-cache  openssl \
                        wget \
                        jq \
                        zip \
                        unzip \
                        vim \
                        bash \
                        ca-certificates \
                        curl \ 
                        git \ 
                        make \
                        docker \
                        py-pip \
                        python3-dev \
                        libffi-dev \
                        openssl-dev \
                        gcc libc-dev && \
    addgroup jenkins docker && \
    addgroup jenkins jenkins && \
    pip install --upgrade pip && \
    echo "ready"
run echo "dc" && \
    pip3 install docker-compose

copy plugins.txt /usr/share/jenkins/ref/plugins.txt

run /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

user jenkins
