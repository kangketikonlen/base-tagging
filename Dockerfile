FROM alpine/git:1.0.7

LABEL "com.github.actions.name"="Base Tagging"
LABEL "com.github.actions.description"="My custom auto tagging branch"
LABEL "com.github.actions.icon"="tag"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/kangketikonlen/base-tagging"
LABEL "homepage"="https://github.com/kangketikonlen/base-tagging"
LABEL "maintainer"="Gilang Pratama <pratamapriadi96@gmail.com>"

RUN apk add coreutils

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]