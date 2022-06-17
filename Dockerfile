# renovate: datasource=github-releases depName=containerbase/ruby-prebuild versioning=ruby
ARG RUBY_VERSION=2.7.6

FROM ghcr.io/containerbase/buildpack:4.5.0@sha256:8773a4b0e3d01b2c41b9c9774d0c982ccf36e275f3e6b267ff0ccd0e8e3dd5d9

ARG RUBY_VERSION
RUN install-tool ruby

LABEL org.opencontainers.image.source="https://github.com/containerbase/ruby" \
      org.opencontainers.image.version="${RUBY_VERSION}"

USER 1000
