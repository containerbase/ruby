# renovate: datasource=github-releases depName=containerbase/ruby-prebuild versioning=ruby
ARG RUBY_VERSION=2.7.3

FROM ghcr.io/containerbase/buildpack:1.3.0@sha256:8d0bd58e02d271304e6ab378aede3927dd2cfb98cdae59d0e8bf6f66a5393963

ARG RUBY_VERSION
RUN install-tool ruby

LABEL org.opencontainers.image.source="https://github.com/containerbase/ruby" \
      org.opencontainers.image.version="${RUBY_VERSION}"

USER 1000
