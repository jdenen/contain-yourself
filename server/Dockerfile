FROM danidemi/docker-reveal.js:latest
MAINTAINER Johnson

COPY server/css/* css/theme/
COPY img/* img/
COPY contain_yourself.html /slides/index.html

RUN rm index.html
RUN ln -s /reveal.js /reveal.js/reveal.js
