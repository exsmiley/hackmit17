FROM python:3.6.2-stretch

WORKDIR /usr/src/
COPY ./requirements.txt ./requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt

COPY ./app ./app

EXPOSE 8080

CMD ["python3", "app/server.py"]