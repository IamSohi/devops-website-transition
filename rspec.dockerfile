FROM ruby:alpine

# For XML parsing
RUN apk add --no-cache build-base ruby-nokogiri  
RUN gem install rspec capybara selenium-webdriver

ENTRYPOINT [ "rspec" ]
# /bin/sh -c every container starts with the shell by default

# CMD [ 'rspec'] # /bin/sh -c 'rspec'
