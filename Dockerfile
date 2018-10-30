FROM ruby:2-alpine AS build

RUN apk add --no-cache build-base sqlite-dev

RUN gem install mailcatcher -v 0.6.5 --no-ri --no-rdoc

FROM ruby:2-alpine

COPY --from=build /usr/local/bundle/ /usr/local/bundle/

RUN apk add --no-cache libstdc++ sqlite-libs tini

EXPOSE 1025
EXPOSE 1080

ENTRYPOINT [ "tini", "--" ]
CMD ["mailcatcher", "--no-quit", "--foreground", "--ip=0.0.0.0"]
