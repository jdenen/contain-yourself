FROM ruby:2.5.1-slim AS docmaker
MAINTAINER Johnson

WORKDIR /docs
COPY cuke/* /docs/
RUN bundle install
RUN bundle exec yard config load_plugins true
RUN bundle exec yardoc '**/*.rb' '**/*.feature'

FROM httpd:2.4
MAINTAINER Johnson

COPY --from=docmaker /docs/doc/ /usr/local/apache2/htdocs/
