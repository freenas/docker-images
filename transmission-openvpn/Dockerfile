FROM haugene/transmission-openvpn:latest
LABEL org.freenas.interactive="false"                             \
      org.freenas.version="0.2" 						\
      org.freenas.upgradeable="true" 					\
      org.freenas.expose-ports-at-host="true" 				\
      org.freenas.privileged="true"                               \
      org.freenas.autostart="true" 					      \
      org.freenas.web-ui-protocol="http" 				      \
      org.freenas.web-ui-port="9091" 					\
      org.freenas.web-ui-path="" 					      \
      org.freenas.port-mappings="9091:9091/tcp" \
      org.freenas.volumes="[						      \
          {							                  \
              \"name\": \"/config\",					\
              \"descr\": \"config storage space\"			\
          },                                                      \
          {							                  \
              \"name\": \"/data\",					      \
              \"descr\": \"download location\"			      \
          },							            \
          {							                  \
              \"name\": \"/scripts\",					\
              \"descr\": \"script folder\"			      \
          },                                                      \
          {							                  \
              \"name\": \"/etc/openvpn/\",				\
              \"descr\": \"ovpn config file storage\"		      \
          }							                  \
      ]" 								            \
      org.freenas.settings="[ 					      \
          {							                  \
              \"env\": \"TZ\",					      \
              \"descr\": \"Timezone\",		      \
              \"optional\": true				            \
          },							            \
          {							                  \
              \"env\": \"LOCAL_NETWORK\",			            \
              \"descr\": \"IP/mask[,IP/mask]\",	                  \
              \"optional\": true				            \
          },							            \
          {							                  \
              \"env\": \"OPENVPN_USERNAME\",			      \
              \"descr\": \"USERNAME\",			            \
              \"optional\": true				            \
          },							            \
          {							                  \
              \"env\": \"OPENVPN_PASSWORD\",				\
              \"descr\": \"PASSWORD\",			            \
              \"optional\": true				            \
          },							            \
          {							                  \
              \"env\": \"OPENVPN_PROVIDER\",				\
              \"descr\": \"PROVIDER\",			            \
              \"optional\": true				            \
          },							            \
          {							                  \
              \"env\": \"PUID\",				            \
              \"descr\": \"UserID\",			            \
              \"optional\": true				            \
          },                                                      \
          {							                  \
              \"env\": \"PGID\",				            \
              \"descr\": \"GroupID\",		                  \
              \"optional\": true				            \
          } 							            \
      ]"
