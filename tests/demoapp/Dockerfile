FROM  python:3.7-alpine3.9

COPY server.py /opt/demoapp/
COPY html /opt/demoapp/html/

EXPOSE 7272

ENTRYPOINT [ "/opt/demoapp/server.py" ]
