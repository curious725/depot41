FROM ruby:2.2.9
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /depot41
WORKDIR /depot41
COPY Gemfile /depot41/Gemfile
COPY Gemfile.lock /depot41/Gemfile.lock
RUN bundle install
COPY . /depot41
