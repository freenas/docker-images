FROM library/jenkins:latest

LABEL org.freenas.interactive="false"                                       \
      org.freenas.version="2.32.3"                                          \
      org.freenas.upgradeable="false"                                       \
      org.freenas.expose-ports-at-host="true"                               \
      org.freenas.autostart="true"                                          \
      org.freenas.port-mappings="8080:8080/tcp,5000:5000/tcp"             \
      org.freenas.volumes="[                                                \
          {                                                                 \
            \"name\": \"/var/jenkins_home\",                                \
            \"descr\": \"/var/jenkins_home\"                                \
          }                                                                 \
      ]"                                                                    \
      org.freenas.settings="[                                               \
          {                                                                 \
            \"env\": \"JENKINS_HOME\",                                      \
            \"descr\": \"/var/jenkins_home\",                               \
            \"optional\": false                                             \
          },                                                                \
          {                                                                 \
            \"env\": \"JENKINS_SLAVE_AGENT_PORT\",                          \
            \"descr\": \"5000\",                                           \
            \"optional\": true                                              \
          },                                                                \
          {                                                                 \
            \"env\": \"JENKINS_UC\",                                        \
            \"descr\": \"https://updates.jenkins.io\",                      \
            \"optional\": true                                              \
          }                                                                 \
      ]"
