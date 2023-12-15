FROM ruby:2.7.4

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /notes
WORKDIR /notes

ADD Gemfile /notes/Gemfile
ADD Gemfile.lock /notes/Gemfile.lock

RUN bundle install

ADD . /notes
