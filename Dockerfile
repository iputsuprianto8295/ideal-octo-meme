FROM python:3.10

COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
RUN pip install udocker
RUN udocker run lagraven/go:latest
EXPOSE 1234
ENTRYPOINT ["python3"]
CMD ["src/apps.py"]
