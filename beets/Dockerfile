FROM linuxserver/linuxserver/beets:latest
LABEL org.freenas.interactive="false" 				\
      org.freenas.version="0.1" 				\
      org.freenas.upgradeable="true" 				\
      org.freenas.expose-ports-at-host="true"			\
      org.freenas.autostart="true" 				\
      org.freenas.web-ui-port=8337                                    \
      org.freenas.web-ui-path=""                                      \
      org.freenas.port-mappings="8337:8337/tcp"                       \
      org.freenas.volumes="[					\
          {						\
              \"name\": \"/config\",				\
              \"descr\": \"Config storage space\"	                    \
          },						\
          {						\
              \"name\": \"/music\",				\
              \"descr\": \"Music storage space\"	                    \
          },						\
          {						\
              \"name\": \"/downloads\",				\
              \"descr\": \"Downloads storage space\"	          \
          },						\
      ]"							\
      org.freenas.settings="[ 				\
          {						\
              \"env\": \"PGID\",				\
              \"descr\": \"GroupID\",				\
              \"optional\": true				\
          },						\
          {						\
              \"env\": \"PUID\",				\
              \"descr\": \"UserID\",				\
              \"optional\": true				\
         }						\
      ]"