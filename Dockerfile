FROM jekyll/jekyll:3.8
WORKDIR /usr/app

RUN touch Gemfile.lock && chmod a+w Gemfile.lock

COPY ./ ./

RUN bundle install

CMD ["bundle", "exec", "jekyll", "serve"]
