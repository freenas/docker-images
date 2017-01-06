FROM dbarton/jdownloader
LABEL org.freenas.interactive="false" \
      org.freenas.version=1 \
      org.freenas.upgradeable="true" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.web-ui-protocol="http" \
      org.freenas.web-ui-port=8000 \
      org.freenas.web-ui-path="/client/c/JDownloader2" \
      org.freenas.port-mappings="8888:8000/tcp" \
      org.freenas.volumes="[						                              \
          {								                                    \
              \"name\": \"/jdownloader/cfg\",					                        \
              \"descr\": \"Configuration files directory\"		                        \
          },                                                                              \
          {								                                    \
              \"name\": \"/media\",					                        \
              \"descr\": \"Media Folder\"		                        \
          }								                                    \							                                    \								                             
       ]"                                                                                 \
       org.freenas.settings="[ 						                        \
          {								                                    \
              \"env\": \"JDOWNLOADER_GID\",					                  \
              \"descr\": \"PGID assigned upon creation\",				            \
              \"optional\": true					                              \
          },								                              \
          {								                                    \
              \"env\": \"JDOWNLOADER_UID\",					                  \
              \"descr\": \"PUID assigned upon creation\",				            \
              \"optional\": true					                              \
          }  
      ]"                                                                                 
 
