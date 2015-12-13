FROM centos:6
MAINTAINER "Krzysztof Pawlowski" <msciciel@msciciel.eu>
ENV container docker
RUN yum -y update; yum clean all;
RUN yum -y install rsync mc wget vim mtr tcpdump strace openssh-server passwd
ADD prompt.sh /etc/profile.d/
RUN echo docker | passwd -f --stdin root
RUN service sshd start; chkconfig sshd on
VOLUME [ "/srv/sources" ]
CMD ["/bin/bash"]
