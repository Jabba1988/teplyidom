FROM python:3.12-alpine
COPY requirement.txt .
RUN pip install --upgrade pip

RUN pip install -r requirement.txt
COPY . /app
WORKDIR /app
COPY entrypoint.sh /
RUN chmod 777 -R /app/static
ENTRYPOINT [ "sh", "/entrypoint.sh" ]
EXPOSE 80