FROM python:3-slim

RUN pip install requests

COPY ip_location /usr/local/bin

CMD ["ip_location"]
