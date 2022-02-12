# renovate: datasource=github-releases depName=containerbase/ruby-prebuild versioning=ruby
ARG RUBY_VERSION=2.7.5

FROM ghcr.io/containerbase/buildpack:3.6.0@sha256:3ecda6073b9fc4a4584d33a009c6775914a36d678fbe3d54d7a00930b83b3c42

ARG RUBY_VERSION
RUN install-tool ruby

LABEL org.opencontainers.image.source="https://github.com/containerbase/ruby" \
      org.opencontainers.image.version="${RUBY_VERSION}"

USER 1000
