# renovate: datasource=github-releases depName=containerbase/ruby-prebuild versioning=ruby
ARG RUBY_VERSION=2.7.7

FROM ghcr.io/containerbase/buildpack:6.0.6@sha256:35a8756a76a61b0c670aad6c13327c34c643dbb8d9e736b7fcd0b25b250064c5

ARG RUBY_VERSION
RUN install-tool ruby

LABEL org.opencontainers.image.source="https://github.com/containerbase/ruby" \
      org.opencontainers.image.version="${RUBY_VERSION}"

USER 1000
