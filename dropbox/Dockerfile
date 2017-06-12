FROM janeczku/dropbox:latest
LABEL org.freenas.interactive="false" \
      org.freenas.version="2" \
      org.freenas.upgradeable="true" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.privileged="true" \
      org.freenas.volumes="[						\
          {								\
              \"name\": \"/dbox/.dropbox\",				\
              \"descr\": \"Dropbox config file\"			\
          },								\
          {								\
              \"name\": \"/dbox/Dropbox\",				\
              \"descr\": \"Dropbox data directory\"			\
          }								\
      ]", \ 
      org.freenas.settings="[ 						\
                {								\
              \"env\": \"DBOX_GID\",					\
              \"descr\": \"GroupID - default 1000\",					\
              \"optional\": true					\
          },								\
          {								\
              \"env\": \"DBOX_UID\",					\
              \"descr\": \"UserID - default 1000\",					\
              \"optional\": true					\
         }								\
      ]"
