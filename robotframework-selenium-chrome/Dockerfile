FROM python:3.7-alpine3.9

ENV SCREEN_WIDTH 1280
ENV SCREEN_HEIGHT 720
ENV SCREEN_DEPTH 16
ENV DEPS="\
    chromium \
    chromium-chromedriver \
    udev \
    xvfb \
"

COPY requirements.txt /tmp/requirements.txt
COPY entry_point.sh /opt/bin/entry_point.sh

RUN apk update ;\
    apk add --no-cache ${DEPS} ;\
    pip install --no-cache-dir -r /tmp/requirements.txt ;\
    # Chrome requires docker to have cap_add: SYS_ADMIN if sandbox is on.
    # Disabling sandbox and gpu as default.
    sed -i "s/self._arguments\ =\ \[\]/self._arguments\ =\ \['--no-sandbox',\ '--disable-gpu'\]/" $(python -c "import site; print(site.getsitepackages()[0])")/selenium/webdriver/chrome/options.py ;\
    # List packages and python modules installed
    apk info -vv | sort ;\
    pip freeze ;\
    # Cleanup
    rm -rf /var/cache/apk/* /tmp/requirements.txt

ENTRYPOINT [ "/opt/bin/entry_point.sh" ]
