FROM linuxserver/sabnzbd:latest
LABEL org.freenas.interactive="false" \
      org.freenas.version="2" \
      org.freenas.upgradeable="true" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.web-ui-protocol="http" \
      org.freenas.web-ui-port="8080" \
      org.freenas.web-ui-path="" \
      org.freenas.port-mappings="8080:8080/tcp,9090:9090/tcp" \
      org.freenas.volumes="[						\
          {								\
              \"name\": \"/config\",					\
              \"descr\": \"Sabnzbd config files\"			\
          },								\
          {								\
               \"name\": \"/config/admin/certs\",					\
               \"descr\": \"SSL certs\"			\
          },								\
          {								\
              \"name\": \"/config/Downloads/incomplete\",			\
              \"descr\": \"incomplete downloads volume\"		\
          },								\
          {								\
              \"name\": \"/config/Downloads/complete\",					\
              \"descr\": \"downloads volume\"				\
           },								\
          {								\
              \"name\": \"/config/Downloads/watched\",					\
              \"descr\": \"watched folder\"				\
          }								\
      ]" \
     org.freenas.settings="[ 						                        \
          {								                                    \
              \"env\": \"TZ\",					                              \
              \"descr\": \"Timezone information, eg Europe/London\",				\
              \"optional\": true					                              \
          },								                              \
          {								                                    \
              \"env\": \"PUID\",					                              \
              \"descr\": \"User ID \",				\
              \"optional\": true					                              \
          },								                              \
          {								                                    \
              \"env\": \"PGID\",					                        \
              \"descr\": \"Group ID\",				\
              \"optional\": true					                              \
          }	                                                                              \
      ]"                                                                                  
