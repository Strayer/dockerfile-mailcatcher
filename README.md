# Mailcatcher

[![Travis (.com)](https://img.shields.io/travis/com/Strayer/dockerfile-mailcatcher.svg)](https://travis-ci.com/Strayer/dockerfile-mailcatcher) [![Docker Build Status](https://img.shields.io/docker/build/strayer/mailcatcher.svg)](https://hub.docker.com/r/strayer/mailcatcher/) [![MicroBadger Size](https://img.shields.io/microbadger/image-size/strayer/mailcatcher.svg)](https://microbadger.com/images/strayer/mailcatcher)

A tiny docker image for [MailCachter](https://mailcatcher.me/).

## Usage

### docker

```sh
docker run -p 1080:1080 -p 1025:1025 strayer/mailcatcher
```

### docker-compose

```yaml
services:
  mailcatcher:
    image: strayer/mailcatcher
    ports:
      - "1080:1080"
```

Your other services can then access the SMTP port on hostname `mailcatcher`.
