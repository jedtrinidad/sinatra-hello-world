FROM ruby:2.7

WORKDIR /usr/src/app

RUN bundle config --global frozen 1

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .

EXPOSE 4567

CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "4567"]
