FROM ruby:3.2 AS builder

RUN apt-get update && apt-get install -y \
    build-essential \
    nodejs \
    git \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./
RUN gem install bundler:2.3.26
RUN bundle config set path 'vendor/bundle' && bundle install

COPY ../.. .

ENV JEKYLL_ENV=production
RUN bundle exec jekyll build --trace \
    --destination /out \
    --config _config.yml,_config_cloudrun.yml


FROM nginx:alpine

RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY --from=builder /out /usr/share/nginx/html

EXPOSE 8080