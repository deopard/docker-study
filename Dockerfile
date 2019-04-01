FROM amazonlinux:2
RUN yum install -y tar gzip make gcc wget which procps
RUN gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB && \curl -sSL https://get.rvm.io | bash
RUN /bin/bash -c "source /etc/profile.d/rvm.sh && rvm install 2.6.2 && rvm use 2.6.2"

