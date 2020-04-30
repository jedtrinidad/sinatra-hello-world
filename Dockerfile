FROM ruby:2.7

WORKDIR /usr/src/app

RUN bundle config --global frozen 1 \
    bundle install

COPY Gemfile Gemfile.lock ./

COPY . .

EXPOSE 4567

CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "4567"]