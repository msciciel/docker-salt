FROM centos:6
MAINTAINER "Krzysztof Pawlowski" <msciciel@msciciel.eu>
ENV container docker
RUN yum -y update; yum clean all;
VOLUME [ "/srv/sources" ]
CMD ["/bin/bash"]
