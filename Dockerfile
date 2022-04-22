# renovate: datasource=github-releases depName=containerbase/ruby-prebuild versioning=ruby
ARG RUBY_VERSION=2.7.6

FROM ghcr.io/containerbase/buildpack:3.15.2@sha256:e74d7f6648f01f13ea81da87eab63b2dc80b5dd527c0ea06cf8379d9e3a796d1

ARG RUBY_VERSION
RUN install-tool ruby

LABEL org.opencontainers.image.source="https://github.com/containerbase/ruby" \
      org.opencontainers.image.version="${RUBY_VERSION}"

USER 1000
