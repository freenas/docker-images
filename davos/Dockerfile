FROM linuxserver/davos:latest
LABEL org.freenas.interactive="false" 				\
      org.freenas.version="0.1" 				\
      org.freenas.autostart="true" 				\
      org.freenas.bridged="true" 				\
      org.freenas.dhcp="true" 				\
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