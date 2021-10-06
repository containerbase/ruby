# renovate: datasource=github-releases depName=containerbase/ruby-prebuild versioning=ruby
ARG RUBY_VERSION=2.7.4

FROM ghcr.io/containerbase/buildpack:1.19.3@sha256:01446b3d46c04837461316723fe6acceb306b20c8ea0e0bf2210f7bef8f87e70

ARG RUBY_VERSION
RUN install-tool ruby

LABEL org.opencontainers.image.source="https://github.com/containerbase/ruby" \
      org.opencontainers.image.version="${RUBY_VERSION}"

USER 1000
