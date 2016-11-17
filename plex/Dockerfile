FROM linuxserver/plex:latest
LABEL org.freenas.interactive="false" \
      org.freenas.version="1.2.7.2987" \
      org.freenas.upgradeable="true" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.bridged="true" \
      org.freenas.web-ui-protocol="http" \
      org.freenas.web-ui-port=32400 \
      org.freenas.web-ui-path="/web" \
      org.freenas.port-mappings="1900:1900/udp,32469:32469/udp,32400:32400/tcp,32469:32469/tcp" \
      org.freenas.volumes="[						\
          {								\
              \"name\": \"/config\",					\
              \"descr\": \"Config storage space\"			\
          },								\
          {								\
              \"name\": \"/data\",					\
              \"descr\": \"Media volume\"				\
          },							\
          {								\
              \"name\": \"/transcode\",					\
              \"descr\": \"(Optional) Transcoding space\"				\
          }								\
      ]" \
      org.freenas.settings="[ 						\
          {								\
              \"env\": \"PUID\",				\
              \"descr\": \"UID owning plex data\",			\
              \"optional\": true					\
          },								\
          {								\
              \"env\": \"PGID\",				\
              \"descr\": \"GID owning plex data\",			\
              \"optional\": true					\
          }, 								\
          {								\
              \"env\": \"VERSION\",					\
              \"descr\": \"Version to update plex to (suggest latest)\",			\
              \"optional\": true					\
          },								\
          {								\
              \"env\": \"TZ\",					\
              \"descr\": \"Timezone of Plex Server\",			\
              \"optional\": true					\
          }								\    
  ]"

