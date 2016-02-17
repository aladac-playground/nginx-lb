# WORK IN PROGRESS 

### nginx-lb

A simple sample config of a `nginx` based load ballancer backed by `confd` and `etcd`.

### Usage
```
docker run -p 80:80 -e ETCD_ADDR=http://etcd_addr:4001 aladac/nginx-lb
```

### Environment Variables
```sh
ETCD_ADDR     # ETCD endpoint url
ETCD_INTERVAL # CONFD poll interval in seconds
```

### ETCD
```sh
/services/web/APP_NAME/domains/DOMAIN # domains
/services/web/APP_NAME/servers/SERVER # servers
```
