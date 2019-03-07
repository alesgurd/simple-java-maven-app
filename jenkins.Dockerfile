FROM jenkins/jenkins:lts
RUN /usr/local/bin/install-plugins.sh artifactory blueocean