# renovate: datasource=github-releases depName=containerbase/ruby-prebuild versioning=ruby
ARG RUBY_VERSION=2.7.5

FROM ghcr.io/containerbase/buildpack:3.7.1@sha256:901a2e58322cd648e820603c9e4df149da483f750877054d7da4a2baf081fb37

ARG RUBY_VERSION
RUN install-tool ruby

LABEL org.opencontainers.image.source="https://github.com/containerbase/ruby" \
      org.opencontainers.image.version="${RUBY_VERSION}"

USER 1000
