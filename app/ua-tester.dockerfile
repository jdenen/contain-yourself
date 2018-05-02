FROM ruby:2.5.1-slim
MAINTAINER Johnson

WORKDIR /tests
COPY cuke/ /tests/

RUN bundle install
CMD ["bundle", "exec", "cucumber"]
