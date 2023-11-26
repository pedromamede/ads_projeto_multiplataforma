FROM ruby:3.1.0

RUN gem install puma sinatra rspec rack-test

COPY ./ /
WORKDIR /

CMD ["puma", "config.ru", "-C", "puma.rb"]
