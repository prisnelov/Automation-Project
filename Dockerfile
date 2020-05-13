FROM centos:7

RUN yum install java-11-openjdk.x86_64 -y
RUN yum install wget -y
RUN yum install sudo -y
RUN wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
RUN rpm --import http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key
RUN yum install jenkins --nogpgcheck -y
RUN yum install /sbin/service -y
RUN echo -e "jenkins ALL=(ALL) NOPASSWD:ALL">>/etc/sudoers

EXPOSE 8080

CMD sudo service jenkins start -DEFOREGROUND && /bin/bash
CMD cat /var.lib/jenkins/secrets/initialAdminPassword
