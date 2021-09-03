# renovate: datasource=github-releases depName=containerbase/ruby-prebuild versioning=ruby
ARG RUBY_VERSION=2.7.4

FROM ghcr.io/containerbase/buildpack:1.18.0@sha256:16c164547e9461600a4ae179f9e973a3fc8148ab1093313b837b4e8fefc4be7a

ARG RUBY_VERSION
RUN install-tool ruby

LABEL org.opencontainers.image.source="https://github.com/containerbase/ruby" \
      org.opencontainers.image.version="${RUBY_VERSION}"

USER 1000
