FROM postgres

LABEL description="Test Docker for PostgreSQL"
LABEL maintainer="Avramova Ruslana, aruslana@gmail.com"
LABEL version="1.0"

ENV POSTGRES_USER avramova
ENV POSTGRES_PASSWORD 1234
ENV POSTGRES_DB avramovadb

COPY ./Program-Classes.sql /docker-entrypoint-initdb.d/
COPY ./Program-Methods.sql /docker-entrypoint-initdb.d/
