FROM ruby

# Install firefox and xvfb for browser simulation.
RUN apt-get update && apt-get install -y iceweasel xvfb
RUN apt-get update -y && \
  apt-get install -y unzip xvfb qt5-default libqt5webkit5-dev \
  gstreamer1.0-plugins-base gstreamer1.0-tools gstreamer1.0-x
ADD xvfb/xvfb_init /etc/init.d/xvfb
RUN chmod a+x /etc/init.d/xvfb
ADD xvfb/xvfb-daemon-run /usr/bin/xvfb-daemon-run
RUN chmod a+x /usr/bin/xvfb-daemon-run

# Install firefox geckodriver to interact with firefox.
WORKDIR /usr/local/bin
RUN wget https://github.com/mozilla/geckodriver/releases/download/v0.18.0/geckodriver-v0.18.0-linux64.tar.gz \
  && tar -xzf geckodriver*.tar.gz \
  && rm geckodriver*.tar.gz

WORKDIR /root
ADD Gemfile ./
RUN bundle install --binstubs

