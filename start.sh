#!/bin/bash
sed -i \
    -e "s|\$APPLICATION_SECRET|$APPLICATION_SECRET|g" \
    -e "s|\$GRAYLOG2_SERVER_URIS|$GRAYLOG2_SERVER_URIS|g" \
    /$WEB_INT_VERSION/conf/graylog-web-interface.conf


/usr/bin/graylog-web-interface
