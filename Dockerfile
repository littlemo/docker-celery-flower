FROM python:3.5
LABEL maintainer="moore@moorehy.com" \
      org.label-schema.vendor="littlemo" \
      org.label-schema.schema-version="1.0"

RUN pip install --no-cache-dir flower redis

EXPOSE 5555

CMD ["flower", "--port=5555"]
