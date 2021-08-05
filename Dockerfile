# renovate: datasource=github-releases depName=containerbase/ruby-prebuild versioning=ruby
ARG RUBY_VERSION=2.7.4

FROM ghcr.io/containerbase/buildpack:1.14.0@sha256:34169f83f6e465012ea5b73dbc5468f5c9a90e303674af3db08fed5007cee1ae

ARG RUBY_VERSION
RUN install-tool ruby

LABEL org.opencontainers.image.source="https://github.com/containerbase/ruby" \
      org.opencontainers.image.version="${RUBY_VERSION}"

USER 1000
