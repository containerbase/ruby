# renovate: datasource=github-releases depName=containerbase/ruby-prebuild versioning=ruby
ARG RUBY_VERSION=2.7.5

FROM ghcr.io/containerbase/buildpack:3.12.3@sha256:8a669452a4d3f13a521835b435c6a747e806434c1bf5707716f9a9e0a34cbfce

ARG RUBY_VERSION
RUN install-tool ruby

LABEL org.opencontainers.image.source="https://github.com/containerbase/ruby" \
      org.opencontainers.image.version="${RUBY_VERSION}"

USER 1000
