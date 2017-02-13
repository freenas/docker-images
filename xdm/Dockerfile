FROM talenddev/xdm:latest
LABEL org.freenas.interactive="false" \
      org.freenas.version="1" \
      org.freenas.upgradeable="true" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.web-ui-protocol="http" \
      org.freenas.web-ui-port="8085" \
      org.freenas.web-ui-path="" \
      org.freenas.port-mappings="8085:8085/tcp" \
      org.freenas.volumes="[						\
          {								\
              \"name\": \"/data\",					\
              \"descr\": \"Configuration volume\"			\
          },								\
          {								\
              \"name\": \"/Media\",					\
              \"descr\": \"Media volume\"				\
          },								\
          {								\
              \"name\": \"/blackhole\",					\
              \"descr\": \"Blackhole volume\"				\
          },								\
          {								\
              \"name\": \"/transmission\",				\
              \"descr\": \"Transmission volume\"			\
          }								\
      ]" 

