from jenkins/jenkins:lts

user root
copy plugins.txt /usr/share/jenkins/ref/plugins.txt

run apt-get update && \
    apt-get install -y -qq --no-install-recommends jq zip unzip vim bash apt-transport-https ca-certificates curl gnupg2 software-properties-common && \
    curl -SskL http://get.docker.com | sh && \
    apt-get autoclean && apt-get autoremove && apt-get clean && \
    usermod -aG docker jenkins && \
    /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt && \
    usermod -aG jenkins jenkins && \
    usermod -g docker jenkins 

user jenkins
