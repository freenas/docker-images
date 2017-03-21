FROM openhab/openhab:2.0.0-amd64
LABEL org.freenas.interactive="false" \
      org.freenas.version="2.0.0" \
      org.freenas.upgradeable="true" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.web-ui-protocol="http" \
      org.freenas.web-ui-port=8080 \
      org.freenas.web-ui-path="" \
      org.freenas.port-mappings="8080:8080/tcp" \
      org.freenas.volumes="[ \
          {	\
              \"name\": \"/openhab/conf\", \
              \"descr\": \"Configuration files\" \
          },	\
          {	\
              \"name\": \"/openhab/addons\", \
              \"descr\": \"Add-ons\" \
          },	\
          {	\
              \"name\": \"/openhab/userdata\",	\
              \"descr\": \"User Data\" \
          }  \
      ]" \
      org.freenas.settings="[ \
          {	\
              \"env\": \"OPENHAB_HTTP_PORT\",	\
              \"descr\": \"Port to use for HTTP (may break FreeNAS Web UI button)\",	\
              \"optional\": true \
          },	\
          {	\
              \"env\": \"OPENHAB_HTTPS_PORT\", \
              \"descr\": \"Port to use for HTTPS\", \
              \"optional\": true \
          }	\
      ]"
