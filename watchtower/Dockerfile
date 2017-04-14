FROM centurylink/watchtower
ENV TERM=xterm
LABEL org.freenas.interactive="false" \
      org.freenas.version="1" \
      org.freenas.upgradeable="true" \
      org.freenas.expose-ports-at-host="false" \
      org.freenas.autostart="true" \
      org.freenas.static-volumes="[                                      \
          {                                                              \
              \"host_path\": \"/var/run/docker.sock\",                   \
              \"container_path\": \"/var/run/docker.dock\",              \
              \"readonly\": \"false\"                                    \
          }                                                              \
      ]"


