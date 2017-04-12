FROM jwilder/nginx-proxy:latest
LABEL org.freenas.interactive="false" \ 
      org.freenas.version="2.0" \
      org.freenas.upgradeable="false" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.port-mappings="80:80/tcp,443:443/tcp" \
      org.freenas.volumes="[						\
          {								\
              \"name\": \"/etc/nginx/certs\",					\
              \"descr\": \"Path to SSL certificates\"			\
          }								\
      ]"                                 \
      org.freenas.static-volumes="[					\
          {								\
              \"host_path\": \"/var/run/docker.sock\",				\
              \"container_path\": \"/tmp/docker.sock\",				\
              \"readonly\": \"true\"					\
          }								\
      ]" \
      org.freenas.settings="[ 						\
          {								\
              \"env\": \"DEFAULT_HOST\",						\
              \"descr\": \"eg foo.bar.com\",		\
              \"optional\": true					\
          }								\
      ]"

