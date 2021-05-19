# renovate: datasource=github-releases depName=containerbase/ruby-prebuild versioning=ruby
ARG RUBY_VERSION=2.7.3

FROM ghcr.io/containerbase/buildpack:1.9.0@sha256:7a445e77431e8acb20c48b91727f5509ff94f8019d31635218d4d6e22fd9b2ac

ARG RUBY_VERSION
RUN install-tool ruby

LABEL org.opencontainers.image.source="https://github.com/containerbase/ruby" \
      org.opencontainers.image.version="${RUBY_VERSION}"

USER 1000
