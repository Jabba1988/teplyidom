FROM python:3.12-alpine
RUN pip install --upgrade pip
COPY /requirement.txt .
RUN pip install -r requirement.txt
COPY . /app
WORKDIR /app
COPY entrypoint.sh /
ENTRYPOINT [ "sh", "/entrypoint.sh" ]
EXPOSE 8000