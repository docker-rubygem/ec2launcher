FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.7.5

RUN gem install ec2launcher --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["ec2launcher"]
CMD ["--help"]
