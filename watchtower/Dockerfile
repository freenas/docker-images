FROM centurylink/watchtower
ENV TERM=xterm
LABEL org.freenas.interactive="false"                                           \
      org.freenas.version="1"                                                   \
      org.freenas.upgradeable="true"                                            \
      org.freenas.expose-ports-at-host="false"                                  \
      org.freenas.autostart="true"                                              \
      org.freenas.volumes="[                                                    \
          {                                                                     \
              \"name\": \"/var/run/docker.sock\",                               \
              \"descr\": \"MUST link /var/run/docker.dock on VM to Container\", \
              \"readonly\": \"false\"                                           \
          }                                                                     \
      ]"
