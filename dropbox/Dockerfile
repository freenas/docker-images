FROM gfjardim/dropbox:latest
LABEL org.freenas.interactive="false" \
      org.freenas.version="1" \
      org.freenas.upgradeable="false" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.privileged="true" \
      org.freenas.volumes="[						\
          {								\
              \"name\": \"/home/.dropbox\",				\
              \"descr\": \"Dropbox config file\"			\
          },								\
          {								\
              \"name\": \"/home/Dropbox\",				\
              \"descr\": \"Dropbox data directory\"			\
          }								\
      ]" 
      org.freenas.settings="[ 						\
                {								\
              \"env\": \"PGID\",					\
              \"descr\": \"GroupID\",					\
              \"optional\": true					\
          },								\
          {								\
              \"env\": \"PUID\",					\
              \"descr\": \"UserID\",					\
              \"optional\": true					\
         }								\
      ]"
