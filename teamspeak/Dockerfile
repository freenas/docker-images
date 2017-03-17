FROM linuxserver/gsm-ts3:latest
LABEL org.freenas.interactive="false" 					\
      org.freenas.version="2" 						\
      org.freenas.upgradeable="true" 					\
      org.freenas.expose-ports-at-host="true" 				\
      org.freenas.autostart="true" 					\
      org.freenas.port-mappings="9987:9987/udp,30033:30033/tcp,10011:10011/tcp,41144:41144/tcp" \
      org.freenas.volumes="[						\
          {							\
              \"name\": \"/config\",					\
              \"descr\": \"Config storage space\"				\
          }							\
      ]" 								\
      org.freenas.settings="[ 					\
          {							\
              \"env\": \"PGID\",					\
              \"descr\": \"GroupID\",					\
              \"optional\": true					\
          },							\
          {							\
              \"env\": \"PUID\",					\
              \"descr\": \"UserID\",					\
              \"optional\": true					\
          }								\
      ]"
