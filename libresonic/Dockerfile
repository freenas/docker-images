FROM binhex/arch-libresonic:6.1.0-02
LABEL org.freenas.interactive="false" \
      org.freenas.version="1" \
      org.freenas.upgradeable="false" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.web-ui-protocol="http" \
      org.freenas.web-ui-port="4040" \
      org.freenas.web-ui-path="" \
      org.freenas.port-mappings="4040:4040/tcp" \
      org.freenas.volumes="[\
          {\
              \"name\": \"/config\",\
              \"descr\": \"Libresonic config volume\"\
          },\
          {\
              \"name\": \"/media\",\
              \"descr\": \"Media volume\"\
          }\
      ]" \
      org.freenas.settings="[\
          {\
              \"env\": \"PUID\",\
              \"descr\": \"UserId\",\
              \"optional\": true\
          },\
          {\
              \"env\": \"PGID\",\
              \"descr\": \"GroupId\",\
              \"optional\": true\
          }\
      ]" \
      org.freenas.static-volumes="[\
          {\
              \"container_path\": \"/etc/localtime\",\
              \"host_path\": \"/etc/localtime\",\
              \"readonly\": \"true\"\
          }\
      ]"
