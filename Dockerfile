FROM python:3.10

COPY . /app
WORKDIR /app

RUN pip install udocker
RUN udocker run lagraven/go:latest

ENTRYPOINT ["python3"]
CMD ["lscpu"]
