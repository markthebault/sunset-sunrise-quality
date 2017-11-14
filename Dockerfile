FROM python:2.7

ADD . /app
WORKDIR /app

RUN apt update && \
  apt install -y tesseract-ocr && \
  rm -rf /var/lib/apt/lists/* && \
  pip install -r requirements.txt

ENTRYPOINT ["python", "/app/sunset.py"]
