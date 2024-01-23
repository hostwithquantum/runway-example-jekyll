FROM ruby:3.1 as build
# or "FROM ruby:2 as build", etc.
# see https://hub.docker.com/_/ruby for available versions

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock .
RUN bundle install

COPY . .
RUN jekyll build

# serve with unprivileged nginx
FROM nginxinc/nginx-unprivileged:alpine
COPY --from=build /usr/src/app/_site /usr/share/nginx/html
