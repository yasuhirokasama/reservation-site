FROM ruby:2.5.1
RUN apt-get update -qq && apt-get install -y build-essential nodejs yarn
RUN mkdir /app
WORKDIR /app
COPY . /app
RUN bundle install