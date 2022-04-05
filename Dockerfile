FROM rclone/rclone:1.58

LABEL "com.github.actions.name"="Github Action for rclone"
LABEL "com.github.actions.description"="Wraps the rclone CLI to be used in Github Actions"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="http://github.com/pkochetkov/rclone"
LABEL "homepage"="http://github.com/pkochetkov/rclone"
LABEL "maintainer"="Pavel Kochetkov <kochetkov.pavel.vl@gmail.com>"

ADD *.sh /

ENTRYPOINT ["/entrypoint.sh"]
