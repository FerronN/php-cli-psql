FROM php:8.1-cli-alpine

# Install PostgreSQL
RUN set -ex \
        && apk --no-cache add postgresql-libs postgresql-dev tzdata \
        && docker-php-ext-install pgsql pdo_pgsql \
        && apk del postgresql-dev
