FROM centos:6
MAINTAINER "Krzysztof Pawlowski" <msciciel@msciciel.eu>
ENV container docker
RUN yum -y update; yum clean all;
RUN yum -y install rsync mc wget vim mtr tcpdump strace
ADD prompt.sh /etc/profile.d/
VOLUME [ "/srv/sources" ]
CMD ["/bin/bash"]
