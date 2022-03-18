# renovate: datasource=github-releases depName=containerbase/ruby-prebuild versioning=ruby
ARG RUBY_VERSION=2.7.5

FROM ghcr.io/containerbase/buildpack:3.12.4@sha256:3c390d60321ee6678d88460c69f3a647556e0b65cc70ff6e30683a9804f59a2a

ARG RUBY_VERSION
RUN install-tool ruby

LABEL org.opencontainers.image.source="https://github.com/containerbase/ruby" \
      org.opencontainers.image.version="${RUBY_VERSION}"

USER 1000
