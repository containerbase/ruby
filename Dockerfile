# renovate: datasource=github-releases depName=containerbase/ruby-prebuild versioning=ruby
ARG RUBY_VERSION=2.7.5

FROM ghcr.io/containerbase/buildpack:3.10.0@sha256:181a9002e62d2f525ab7ae6d75c51a5bf9ea21652e226e55a1e56d072a8fd2f2

ARG RUBY_VERSION
RUN install-tool ruby

LABEL org.opencontainers.image.source="https://github.com/containerbase/ruby" \
      org.opencontainers.image.version="${RUBY_VERSION}"

USER 1000
