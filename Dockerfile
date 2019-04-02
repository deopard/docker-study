FROM amazonlinux:2
RUN yum install -y tar gzip make gcc wget which procps mysql-devel
RUN gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB && \curl -sSL https://get.rvm.io | bash
RUN /bin/bash -c "source /etc/profile.d/rvm.sh && rvm install 2.6.1 && rvm use 2.6.1 && rvm --default use 2.6.1 && gem install bundler"

# Create app directory
RUN mkdir -p /usr/src
WORKDIR /usr/src

# Copy App
COPY . /usr/src
RUN /bin/bash -c "ls -al bin"
RUN chmod +x bin/*
RUN /bin/bash -c "ls -al bin"
RUN /bin/bash -c "source /etc/profile.d/rvm.sh && rvm use 2.6.1 && ruby --version && bin/bundle install"

EXPOSE 3000

RUN chmod +x /usr/src/start.sh
ARG RAILS_ENV=development
RUN echo sh
RUN echo $RAILS_ENV
RUN echo bash
RUN /bin/bash -c "echo $RAILS_ENV"
CMD ["./start.sh", "${RAILS_ENV}"]
