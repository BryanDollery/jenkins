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
    pip3 install docker-compose

# copy plugins.txt /usr/share/jenkins/ref/plugins.txt

run curl -LSs https://downloads.apache.org/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz | tar -xz

env M2_HOME=/apache-maven-3.6.3
env JAVA_HOME=/usr/lib/jvm/default-jvm
env PATH=$PATH:/$M2_HOME/bin
env URL_CONNECTION_TIMEOUT=30

# run /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

user jenkins
