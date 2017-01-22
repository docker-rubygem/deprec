FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.9.1

RUN gem install deprec --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["depify"]
CMD ["--help"]
