FROM  python:3.7-alpine3.9

COPY requirements.txt /tmp/requirements.txt
COPY tests /tests

RUN pip install --no-cache-dir -r /tmp/requirements.txt

ENTRYPOINT [ "robot" ]
