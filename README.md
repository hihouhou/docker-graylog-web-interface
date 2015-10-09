# graylog-web-interface
graylog-web-interface for docker

## Start graylog-web-interface

`docker run -p 9000:9000 --link graylog-server:graylog-server -e APPLICATION_SECRET='DnXVN26062ju5f0zrLDu9M5RQrtK3PWJDA2zhzTHbTKt36MMcWI2JkowSffWU5TaNp648V4fXlCbTu6d7JZv5FtmA2G7Yayi' -e GRAYLOG2_SERVER_URIS='http://graylog-server:12900/' --name hihouhou/graylog-web-interface graylog-web-interface:latest`

## Start graylog-web-interface without ENV 

`docker run -p 9000:9000 --link graylog-server:graylog-server --name hihouhou/graylog-web-interface graylog-web-interface:latest`

## for docker-compose

graylog-web-interface:
  container_name: graylog-web-interface
  build: hihouhou/graylog-web-interface:latest
  command:
  - /bin/bash
  - start.sh
  environment:
  - APPLICATION_SECRET=DnXVN26062ju5f0zrLDu9M5RQrtK3PWJDA2zhzTHbTKt36MMcWI2JkowSffWU5TaNp648V4fXlCbTu6d7JZv5FtmA2G7Yayi
  - GRAYLOG2_SERVER_URIS=http://graylog-server:12900/
  ports:
   - "9000:9000"
