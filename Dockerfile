FROM alpine

LABEL "com.github.actions.name"="Github Action for rclone"
LABEL "com.github.actions.description"="Wraps the rclone CLI to be used in Github Actions"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="http://github.com/wei/rclone"
LABEL "homepage"="http://github.com/wei/rclone"
LABEL "maintainer"="Wei He <github@weispot.com>"

RUN apk add --no-cache bash curl unzip ca-certificates fuse openssh-client \
  && wich unzip \
  && sleep 5 \
  && wget -qO- https://rclone.org/install.sh | bash \
  && sleep 5 \
  && apk del bash curl unzip

ADD *.sh /

ENTRYPOINT ["/entrypoint.sh"]
