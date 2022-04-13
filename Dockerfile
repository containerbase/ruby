# renovate: datasource=github-releases depName=containerbase/ruby-prebuild versioning=ruby
ARG RUBY_VERSION=2.7.6

FROM ghcr.io/containerbase/buildpack:3.14.4@sha256:6ddd7f558335abdba7be0be6d7ed5c082cf9998f0180d54468e224edaf3f15e1

ARG RUBY_VERSION
RUN install-tool ruby

LABEL org.opencontainers.image.source="https://github.com/containerbase/ruby" \
      org.opencontainers.image.version="${RUBY_VERSION}"

USER 1000
