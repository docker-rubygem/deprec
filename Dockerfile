FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.6.0

RUN gem install deprec --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["depify"]
CMD ["--help"]
