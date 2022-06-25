FROM python:3.10

WORKDIR /app

#RUN apk add --no-cache --virtual .build-deps bash build-base su-exec
#
RUN pip install --upgrade pip

COPY requirements.txt ./

RUN pip install -r requirements.txt

COPY app /app
#
#RUN addgroup -S unprivileged -g 1000 \
#    && adduser -S -G unprivileged -u 1000 unprivileged
#
#RUN chown -R unprivileged:unprivileged /app
#
#CMD ["python", "/app/main.py"]
