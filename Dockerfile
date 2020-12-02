FROM us.gcr.io/ops-support-191021/buda-ruby:2.7.1

COPY Gemfile Gemfile.lock /app/
RUN bundle install

COPY . /app

