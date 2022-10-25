ARG BASE_VERSION=latest
FROM ghcr.io/contrast-security-inc/contrast:$BASE_VERSION as base

EXPOSE 8080

ENTRYPOINT [ "docker-entrypoint.sh" ]
