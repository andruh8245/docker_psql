FROM python:3-alpine

WORKDIR /srv

COPY . .

COPY requirements.txt requirements.txt

RUN \
 apk add --no-cache postgresql-libs && \
 apk add --no-cache --virtual .build-deps gcc musl-dev postgresql-dev && \
 python3 -m pip install -r requirements.txt --no-cache-dir && \
 apk --purge del .build-deps

RUN pip3 install --no-cache-dir -r requirements.txt

ENTRYPOINT ["python3"]
CMD ["web.py"]