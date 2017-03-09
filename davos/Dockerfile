FROM linuxserver/davos:latest
LABEL org.freenas.interactive="false" 				\
      org.freenas.version="0.1" 				\
      org.freenas.autostart="true" 				\
      org.freenas.web-ui-protocol="http" 			\
      org.freenas.web-ui-port="8181" 				\
      org.freenas.web-ui-path="" 				\
      org.freenas.port-mappings="8080:8181/tcp" 			\
      org.freenas.volumes="[					\
          {						\
              \"name\": \"/config\",				\
              \"descr\": \"Config and database storage space\"	\
          },						\
          {						\
              \"name\": \"/download\",				\
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
