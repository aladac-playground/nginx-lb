FROM alpine:3.2
RUN apk -U add nginx ruby ruby-io-console
RUN gem install --no-ri --no-rdoc foreman
ADD https://github.com/kelseyhightower/confd/releases/download/v0.11.0/confd-0.11.0-linux-amd64 /sbin/confd
RUN chmod +x /sbin/confd
RUN rm -rf /etc/nginx
COPY ./etc /etc
COPY Procfile /app/Procfile
COPY .env /app/.env
WORKDIR /app
CMD foreman start
