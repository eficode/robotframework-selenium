FROM python:2.7-alpine

RUN apk add --update --no-cache \
    udev \
    chromium \
    chromium-chromedriver \
    xvfb

RUN pip install --upgrade pip

RUN pip install robotframework \
  robotframework-selenium2library \
  selenium

COPY entry_point.sh /opt/bin/entry_point.sh
RUN chmod +x /opt/bin/entry_point.sh

# RUN wget -O /tmp/geckodriver.tar.gz https://github.com/mozilla/geckodriver/releases/download/v0.15.0/geckodriver-v0.15.0-linux64.tar.gz \
#  && tar -C /usr/bin -zxf /tmp/geckodriver.tar.gz \
#  && chmod 755 /usr/bin/geckodriver \
#  && rm /tmp/geckodriver.tar.gz


# RUN wget -O /tmp/chromedriver.zip https://chromedriver.storage.googleapis.com/2.24/chromedriver_linux64.zip \
#  && rm -f /usr/bin/chromedriver \
#  && unzip /tmp/chromedriver.zip -d /usr/bin \
#  && chmod +x /usr/bin/chromedriver \
#  && rm /tmp/chromedriver.zip

ENV SCREEN_WIDTH 1360
ENV SCREEN_HEIGHT 1020
ENV SCREEN_DEPTH 24

RUN echo 'CHROMIUM_FLAGS="--no-sandbox --disable-gpu"' >> /etc/chromium/chromium.conf

ENTRYPOINT [ "/opt/bin/entry_point.sh" ]
