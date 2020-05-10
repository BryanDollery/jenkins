from jenkinsci/blueocean

user root

run curl -LSs https://downloads.apache.org/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz | tar -xz

env M2_HOME=/apache-maven-3.6.3
env URL_CONNECTION_TIMEOUT=30

