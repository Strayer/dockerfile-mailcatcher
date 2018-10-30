# Mailcatcher

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
