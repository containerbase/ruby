# renovate: datasource=github-releases depName=containerbase/ruby-prebuild versioning=ruby
ARG RUBY_VERSION=2.7.6

FROM ghcr.io/containerbase/buildpack:4.8.0@sha256:770081b699d5f3d12f58d1f095aa91b27d4df9daa57ec5745b98c6cfadaa42b6

ARG RUBY_VERSION
RUN install-tool ruby

LABEL org.opencontainers.image.source="https://github.com/containerbase/ruby" \
      org.opencontainers.image.version="${RUBY_VERSION}"

USER 1000
