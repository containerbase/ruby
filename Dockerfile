# renovate: datasource=github-releases depName=containerbase/ruby-prebuild versioning=ruby
ARG RUBY_VERSION=2.7.3

FROM ghcr.io/containerbase/buildpack:1.6.1@sha256:65d2813db50ca95c578cb1fe8726ee4debbbfedefc14278167d9261ca1e5c3cc

ARG RUBY_VERSION
RUN install-tool ruby

LABEL org.opencontainers.image.source="https://github.com/containerbase/ruby" \
      org.opencontainers.image.version="${RUBY_VERSION}"

USER 1000
