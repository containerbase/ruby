# renovate: datasource=github-releases depName=containerbase/ruby-prebuild versioning=ruby
ARG RUBY_VERSION=2.7.3

FROM ghcr.io/containerbase/buildpack:1.8.0@sha256:3adec8196bcec7d1b822c24938347edaf9572d575c71e13aefa22fd80bbeb2ef

ARG RUBY_VERSION
RUN install-tool ruby

LABEL org.opencontainers.image.source="https://github.com/containerbase/ruby" \
      org.opencontainers.image.version="${RUBY_VERSION}"

USER 1000
