FROM binhex/arch-madsonic:latest			
LABEL org.freenas.interactive="false" 					\
      org.freenas.version="1" 					\
      org.freenas.upgradeable="false" 					\
      org.freenas.expose-ports-at-host="true" 				\
      org.freenas.autostart="true" 					\
      org.freenas.web-ui-protocol="http" 				\
      org.freenas.web-ui-port="4040" 					\
      org.freenas.web-ui-path="" 					\
      org.freenas.port-mappings="4040:4040/tcp,4050:4050/tcp" 		\
      org.freenas.volumes="[						\
          {							\
              \"name\": \"/config\",					\
              \"descr\": \"Config storage space\"				\
          },							\
          {							\
              \"name\": \"/media\",					\
              \"descr\": \"media volume\"				\
          }							\
      ]" 								\
      org.freenas.settings="[ 					\
          {							\
              \"env\": \"SSL\",					\
              \"descr\": \"SSL enabled - yes or no\",			\
              \"optional\": true					\
          },							\
          {							\
              \"env\": \"PGID\",					\
              \"descr\": \"GroupID\",					\
              \"optional\": true					\
          },							\
          {							\
              \"env\": \"PUID\",					\
              \"descr\": \"UserID\",					\
              \"optional\": true					\
         }							\
      ]"								\
      org.freenas.static-volumes="[					\
          {							\
              \"container_path\": \"/etc/localtime\",			\
              \"host_path\": \"/etc/localtime\",				\
              \"readonly\": \"true\"					\
          }							\
      ]"