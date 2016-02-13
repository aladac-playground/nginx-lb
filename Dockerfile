FROM phusion/baseimage:0.9.18
RUN apt-get update -yq
RUN apt-get install -yq nginx
RUN curl -L https://github.com/kelseyhightower/confd/releases/download/v0.11.0/confd-0.11.0-linux-amd64 -o /sbin/confd
RUN chmod +x /sbin/confd
RUN curl -L  https://github.com/coreos/etcd/releases/download/v2.2.5/etcd-v2.2.5-linux-amd64.tar.gz -o etcd-v2.2.5-linux-amd64.tar.gz
RUN tar xzvf etcd-v2.2.5-linux-amd64.tar.gz
RUN mv etcd-v2.2.5-linux-amd64/etcd* -t /sbin/
RUN rm -rf /etcd-v2.2.5-linux-amd64*
COPY ./etc /etc
