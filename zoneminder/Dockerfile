FROM quantumobject/docker-zoneminder
LABEL org.freenas.interactive="false"			\
      org.freenas.version="1"				\
      org.freenas.upgradeable="true" 			\
      org.freenas.expose-ports-at-host="true" 		\
      org.freenas.autostart="true" 			\
      org.freenas.port-mappings="80:80/tcp"			\
	  org.freenas.port-mappings="9000:9000/tcp"			\
	  org.freenas.port-mappings="9000:9000/udp"			\
      org.freenas.volumes="[				\
          {					\
              \"name\": \"/zoneminder\",			\
              \"descr\": \"Config storage space\"		\
          }					\
      ]" 						\
      