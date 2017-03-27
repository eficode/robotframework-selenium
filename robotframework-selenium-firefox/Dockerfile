FROM python:2.7-alpine

RUN apk add --no-cache \
    dbus \
    ttf-freefont \
    firefox-esr \
    xvfb

RUN pip install --no-cache-dir \
  robotframework==3.0.2 \
  robotframework-selenium2library==1.8.0 \
  selenium==2.53.6

COPY entry_point.sh /opt/bin/entry_point.sh
RUN chmod +x /opt/bin/entry_point.sh

ENV SCREEN_WIDTH 1280
ENV SCREEN_HEIGHT 720
ENV SCREEN_DEPTH 16

ENTRYPOINT [ "/opt/bin/entry_point.sh" ]
