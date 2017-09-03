FROM ruby

# Install firefox and xvfb for browser simulation.
RUN apt-get update && apt-get install -y iceweasel xvfb

WORKDIR /usr/local/bin
RUN wget https://github.com/mozilla/geckodriver/releases/download/v0.18.0/geckodriver-v0.18.0-linux64.tar.gz \
  && tar -xzf geckodriver*.tar.gz \
  && rm geckodriver*.tar.gz

WORKDIR /root
ADD Gemfile ./
RUN bundle install --binstubs
