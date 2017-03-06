FROM mace/qbittorrent:latest
LABEL org.freenas.interactive="false" \
      org.freenas.version="1" \
      org.freenas.upgradeable="true" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.web-ui-protocol="http" \
      org.freenas.web-ui-port="8082" \
      org.freenas.web-ui-path="" \
      org.freenas.port-mappings="8082:8082/tcp,6881:6881/tcp" \
      org.freenas.volumes="[						                              \
          {								                                    \
              \"name\": \"/config\",					                        \
              \"descr\": \"Configuration files directory\"		                        \
          },								                              \
          {								                                    \
              \"name\": \"/downloads\",					                        \
              \"descr\": \"Downloads folder\"				                        \
          },								                              \
          {								                                    \
              \"name\": \"/watched\",					                        \
              \"descr\": \"Folder for *.torrent files\"				            \
          }								                                    \								                             
       ]"                                                                                 \
       org.freenas.settings="[ 						                        \
          {								                                    \
              \"env\": \"AGROUP\",					                              \
              \"descr\": \"PGID assigned upon creation\",				            \
              \"optional\": true					                              \
          },								                              \
          {								                                    \
              \"env\": \"AUSER\",					                              \
              \"descr\": \"PUID assigned upon creation\",				            \
              \"optional\": true					                              \
          }                                                                               \
      ]"                                                                                  \
      org.freenas.static-volumes="[					                              \
          {								                                    \
              \"container_path\": \"/etc/localtime\",			                        \
              \"host_path\": \"/etc/localtime\",			                        \
              \"readonly\": \"true\"					                        \
          }								                                    \
      ]"
