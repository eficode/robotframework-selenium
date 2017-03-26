FROM  python:2.7-alpine

RUN mkdir -p /opt/demoapp

COPY . /opt/demoapp
RUN chmod +x /opt/demoapp/server.py

ENTRYPOINT [ "/opt/demoapp/server.py" ]
