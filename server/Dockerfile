FROM danidemi/docker-reveal.js:latest
MAINTAINER Johnson

EXPOSE 8000
COPY server/css/* css/theme/
COPY img/* img/
COPY contain_yourself.html /slides/index.html
RUN rm index.html \
    && ln -s /reveal.js /reveal.js/reveal.js
