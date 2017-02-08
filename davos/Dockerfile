FROM linuxserver/daveos:latest
LABEL org.freenas.interactive="false" 				\
      org.freenas.version="0.1" 				\
      org.freenas.upgradeable="true" 				\
      org.freenas.expose-ports-at-host="true"			\
      org.freenas.autostart="true" 				\
      org.freenas.web-ui-protocol="http" 			\
      org.freenas.web-ui-port=34567 				\
      org.freenas.web-ui-path="" 				\
      org.freenas.port-mappings="34567:8080/tcp" 			\
      org.freenas.volumes="[					\
          {						\
              \"name\": \"/config\",				\
              \"descr\": \"Config and database storage space\"	\
          },						\
          {						\
              \"name\": \"/downloads\",				\
              \"descr\": \"Location of downloads\"		\
          }						\
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