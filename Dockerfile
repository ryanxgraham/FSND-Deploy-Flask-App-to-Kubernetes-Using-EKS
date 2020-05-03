FROM python:stretch
COPY . /app

WORKDIR /app

RUN pip install --upgrade pip
RUN pip install pytest==4.0.2
RUN pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080","main:APP"]
