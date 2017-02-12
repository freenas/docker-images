FROM larsks/logitech-media-server:latest			
LABEL org.freenas.interactive="false" 					\
      org.freenas.version="1" 					\
      org.freenas.upgradeable="false" 					\
      org.freenas.expose-ports-at-host="true" 				\
      org.freenas.autostart="true" 					\
      org.freenas.web-ui-protocol="http" 				\
      org.freenas.web-ui-port="9000" 					\
      org.freenas.web-ui-path="" 					\
      org.freenas.port-mappings="3483:3483/tcp,9000:9000/tcp,3483:3483/udp" 	\
      org.freenas.volumes="[						\
          {							\
              \"name\": \"/srv/squeezebox\",				\
              \"descr\": \"Config storage space\"				\
          },							\
          {							\
              \"name\": \"/srv/music\",					\
              \"descr\": \"music volume\"				\
          }							\
      ]" 								\								\
      org.freenas.static-volumes="[					\
          {							\
              \"container_path\": \"/etc/localtime\",			\
              \"host_path\": \"/etc/localtime\",				\
              \"readonly\": \"true\"					\
          }							\
