#-------------------------
# renovate rebuild trigger
# https://www.ruby-lang.org/en/downloads/branches/
#-------------------------

# makes lint happy
FROM scratch

# EOL: 2022-03-31
# renovate: datasource=github-releases depName=containerbase/ruby-prebuild versioning=ruby
ENV PHP_VERSION=2.6.7

# renovate: datasource=github-releases depName=containerbase/ruby-prebuild versioning=ruby
ENV PHP_VERSION=2.7.3

# renovate: datasource=github-releases depName=containerbase/ruby-prebuild versioning=ruby
ENV PHP_VERSION=3.0.1
