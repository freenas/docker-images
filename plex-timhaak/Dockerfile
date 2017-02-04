FROM timhaak/plex:latest
LABEL org.freenas.interactive="false"			\
      org.freenas.version="1.3.3.3148" 			\
      org.freenas.upgradeable="true" 			\
      org.freenas.expose-ports-at-host="true" 		\
      org.freenas.autostart="true" 			\
      org.freenas.bridged="true" 			\
      org.freenas.dhcp="true" \
      org.freenas.web-ui-protocol="http" 		\
      org.freenas.web-ui-port=32400 			\
      org.freenas.web-ui-path="web" 			\
      org.freenas.port-mappings="1900:1900/udp,32469:32469/udp,32400:32400/tcp,32469:32469/tcp" 					\
      org.freenas.volumes="[				\
          {						\
              \"name\": \"/config\",			\
              \"descr\": \"Config storage space\"	\
          },						\
          {						\
              \"name\": \"/data\",			\
              \"descr\": \"Media volume\"		\
          }						\
      ]"						\
      org.freenas.settings="[ 				\
          {						\
              \"env\": \"PLEX_USERNAME\",		\
              \"descr\": \"Plex account user name\",	\
              \"optional\": true			\
          },						\
          {						\
              \"env\": \"PLEX_PASSWORD\",		\
              \"descr\": \"Plex account password\",	\
              \"optional\": true			\
          }, 						\
          {						\
              \"env\": \"PLEX_TOKEN\",			\
              \"descr\": \"Plex account token\",	\
              \"optional\": true			\
          }						\
      ]"
