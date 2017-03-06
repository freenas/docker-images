FROM emby/embyserver:beta
LABEL org.freenas.interactive="false" \
      org.freenas.version="1" \
      org.freenas.upgradeable="true" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.web-ui-protocol="http" \
      org.freenas.web-ui-port=8096 \
      org.freenas.web-ui-path="" \
      org.freenas.port-mappings="8096:8096/tcp,8920:8920/tcp,7359:7359/udp,1900:1900/udp" \
      org.freenas.volumes="[						                              \
          {								                                    \
              \"name\": \"/config\",					                        \
              \"descr\": \"Configuration files directory\"		                        \
          },								                              \
          {								                                    \
              \"name\": \"/media\",					                              \
              \"descr\": \"Media volume\"				                              \
          },								                              \
          {								                                    \
              \"name\": \"/sslcerts\",					                              \
              \"descr\": \"sslcerts volume\"				                              \
          }								                                    \
       ]"                                                                                 \
       org.freenas.settings="[ 						                        \
          {								                                    \
              \"env\": \"APP_GID\",					                              \
              \"descr\": \"GID assigned to APP_USER upon creation\",				\
              \"optional\": true					                              \
          },								                              \
          {								                                    \
              \"env\": \"APP_UID\",					                              \
              \"descr\": \"UID assigned to APP_USER upon creation\",				\
              \"optional\": true					                              \
          },								                              \
          {								                                    \
              \"env\": \"APP_USER\",					                        \
              \"descr\": \"Name of user the service will run as\",				\
              \"optional\": true					                              \
          },								                              \
          {								                                    \
              \"env\": \"EDGE\",					                              \
              \"descr\": \"UID assigned to APP_USER upon creation\",				\
              \"optional\": true					                              \
          },								                              \
          {								                                    \
              \"env\": \"UMASK\",					                              \
              \"descr\": \"UID assigned to APP_USER upon creation\",				\
              \"optional\": true					                              \
          }								                              \
      ]"                                                                                  \
      org.freenas.static-volumes="[					                              \
          {								                                    \
              \"container_path\": \"/etc/localtime\",			                        \
              \"host_path\": \"/etc/localtime\",			                        \
              \"readonly\": \"true\"					                        \
          }								                                    \
      ]"
