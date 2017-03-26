FROM python:2.7-alpine

RUN apk add --no-cache \
    dbus \
    ttf-freefont \
    firefox-esr \
    xvfb

RUN pip install --no-cache-dir robotframework \
  robotframework-selenium2library \
  selenium==2.53.6

COPY entry_point.sh /opt/bin/entry_point.sh
RUN chmod +x /opt/bin/entry_point.sh

ENV SCREEN_WIDTH 1360
ENV SCREEN_HEIGHT 1020
ENV SCREEN_DEPTH 24

ENTRYPOINT [ "/opt/bin/entry_point.sh" ]
