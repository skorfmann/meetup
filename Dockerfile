FROM ruby
EXPOSE 3000

ADD Gemfile /opt/app/Gemfile
ADD Gemfile.lock /opt/app/Gemfile.lock
RUN cd /opt/app ; bundle install

ADD . /opt/app/
WORKDIR /opt/app/

CMD ["rails", "server"]
ENTRYPOINT ["bundle", "exec"]
