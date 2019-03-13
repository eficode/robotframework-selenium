FROM python:3.7-alpine3.9

ENV SCREEN_WIDTH 1280
ENV SCREEN_HEIGHT 720
ENV SCREEN_DEPTH 16
ENV DEPS="\
    dbus \
    firefox-esr \
    ttf-freefont \
    xvfb \
"

COPY requirements.txt /tmp/requirements.txt
COPY entry_point.sh /opt/bin/entry_point.sh

RUN apk update ;\
    apk add --no-cache ${DEPS} ;\
    pip install --no-cache-dir -r /tmp/requirements.txt ;\
    # Install geckodriver
    wget -q https://github.com/mozilla/geckodriver/releases/download/v0.24.0/geckodriver-v0.24.0-linux64.tar.gz ;\
    tar -C /usr/bin/ -xf geckodriver-*.tar.gz ;\
    # List packages and python modules installed
    apk info -vv | sort ;\
    pip freeze ;\
    # Cleanup
    rm -rf /var/cache/apk/* /tmp/requirements.txt /geckodriver-*.tar.gz

ENTRYPOINT [ "/opt/bin/entry_point.sh" ]
