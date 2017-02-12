FROM linuxserver/lazylibrarian
LABEL org.freenas.interactive="false" \
      org.freenas.version="1" \
      org.freenas.upgradeable="true" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.web-ui-protocol="http" \
      org.freenas.web-ui-port=5299 \
      org.freenas.web-ui-path="" \
      org.freenas.port-mappings="5299:5299/tcp,8181:8181/tcp" \
      org.freenas.volumes="[						      \
          {								            \
              \"name\": \"/config\",					\
              \"descr\": \"Configuration files directory\"		\
          },								      \
          {								            \
              \"name\": \"/downloads\",					\
              \"descr\": \"Downloads volume\"				\
          },								      \
          {								            \
              \"name\": \"/books\",					      \
              \"descr\": \"Location of the books library\"		\
          }								            \
      ]"                                                   \ 
      org.freenas.settings="[ 						                        \
          {								                                    \
              \"env\": \"PGID\",					                              \
              \"descr\": \"PGID\",				                                    \
              \"optional\": true					                              \
          },								                              \
          {								                                    \
              \"env\": \"PUID\",					                              \
              \"descr\": \"PUID\",				                                    \
              \"optional\": true					                              \
          },								                              \
          {								                                    \
              \"env\": \"TZ\",					                              \
              \"descr\": \"for setting timezone information, eg Europe/London\",		\
              \"optional\": true					                              \
          }                                                                               \
      ]"                  

