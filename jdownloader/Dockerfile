FROM plusminus/jdownloader2-headless
LABEL org.freenas.interactive="false" \
      org.freenas.version=1 \
      org.freenas.upgradeable="true" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.volumes="[						                              \
          {								                                            \
              \"name\": \"/opt/JDownloader/cfg\",					                  \
              \"descr\": \"Configuration files directory\"		            \
          },                                                               \
          {								                                              \
              \"name\": \"/root/Downloads\",					                              \
              \"descr\": \"Media Folder\"		                              \
          }								                                               \									                             
       ]"                                                                  \
       org.freenas.settings="[ 						                              \
          {								                                            \
              \"env\": \"JDOWNLOADER_GID\",					                  \
              \"descr\": \"PGID assigned upon creation\",				            \
              \"optional\": true					                              \
          },								                                          \
          {								                                            \
              \"env\": \"JDOWNLOADER_UID\",					                  \
              \"descr\": \"PUID assigned upon creation\",				      \
              \"optional\": true					                              \
          } \
      ]"        
