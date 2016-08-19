FROM ruby:2.3.1-onbuild

# install runtime dependencies
RUN apt-get update \
  && apt-get install -y \
     rpm

RUN chown -R nobody:nogroup /usr/src/app

ENTRYPOINT ["bundle", "exec"]
CMD fpm
