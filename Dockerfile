ARG BASE_VERSION=latest
FROM ghcr.io/contrast-security-inc/contrast:$BASE_VERSION as base

USER 0

RUN chgrp -R 0 /opt/contrast \
  && chmod -R g+rwX /opt/contrast

EXPOSE 8080

ENTRYPOINT [ "docker-entrypoint.sh" ]
