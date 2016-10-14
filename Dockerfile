FROM centos:7
RUN yum -y install http://linuxsoft.cern.ch/wlcg/centos7/x86_64/HEP_OSlibs-7.1.5-0.el7.cern.x86_64.rpm
RUN yum -y install gcc-gfortran which
RUN useradd -U -m alice
USER alice
WORKDIR /home/alice
CMD /bin/bash
