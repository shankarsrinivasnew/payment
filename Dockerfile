FROM python:3.7
RUN mkdir /app
WORKDIR /app
COPY payment.ini patment.py rabbitmq.py requirments.txt /app/
RUN pip3.7 install -r requirements.txt
COPY docker/run.sh .
ENTRYPOINT [ "bash","run.sh" ]