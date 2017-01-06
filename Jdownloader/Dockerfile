FROM dbarton/jdownloader:latest
LABEL org.freenas.interactive="false" \
      org.freenas.version=1 \
      org.freenas.upgradeable="true" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.web-ui-protocol="http" \
      org.freenas.web-ui-port=8765 \
      org.freenas.web-ui-path="" \
      org.freenas.port-mappings="5900:5900/tcp,8765:8765/tcp" \
      org.freenas.volumes="[						                              \
          {								                                    \
              \"name\": \"/config\",					                        \
              \"descr\": \"Configuration files directory\"		                        \
          },								                              \
          {								                                    \
              \"name\": \"/media\",					                        \
              \"descr\": \"Downloads folder\"				                        \
          }      								                                    \								                             
       ]"                                                                                 \
       org.freenas.settings="[ 						                        \
          {								                                    \
              \"env\": \"JDOWNLOADER_GID\",					                              \
              \"descr\": \"PGID assigned upon creation\",				            \
              \"optional\": true					                              \
          },								                              \
          {								                                    \
              \"env\": \"JDOWNLOADER_UID\",					                              \
              \"descr\": \"PUID assigned upon creation\",				            \
              \"optional\": true					                              \
          }                                                                               \
      ]"                                                                                  \
 
