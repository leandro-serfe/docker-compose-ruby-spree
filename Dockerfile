FROM ruby:2.2.4
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs imagemagick
RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
COPY . /myapp
RUN bundle install
