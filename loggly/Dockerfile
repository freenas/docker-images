FROM sendgridlabs/loggly-docker:latest
LABEL org.freenas.autostart="true" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.interactive="false" \
      org.freenas.port-mappings="514:514/udp" \
      org.freenas.version="latest" \
      org.freenas.settings="[                             \
          {                                               \
              \"env\": \"LOGGLY_AUTH_TOKEN\",             \
              \"descr\": \"Loggly Customer Token\"        \
          },                                              \
          {                                               \
              \"env\": \"LOGGLY_TAG\",                    \
              \"descr\": \"Tag Describing Source\"        \
          },                                              \
          {                                               \
              \"env\": \"LOGGLY_DEBUG\",                  \
              \"descr\": \"True to enable Loggly debug\", \
              \"optional\": true                          \
          }                                               \
      ]"