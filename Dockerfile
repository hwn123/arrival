FROM jenkins/jenkins:centos
USER root
RUN yum install -y yum-utils && \
    yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo && \
    yum install -y docker-ce-cli && \ 
    usermod -a -G docker jenkins
COPY plugins.txt /usr/share/jenkins/ref/
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
