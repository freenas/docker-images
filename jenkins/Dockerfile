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
            \"env\": \"PATH\",                                              \
            \"descr\": \"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\", \
            \"optional\": false                                             \
          },                                                                \
          {                                                                 \
            \"env\": \"LANG\",                                              \
            \"descr\": \"C.UTF-8\",                                         \
            \"optional\": false                                             \
          },                                                                \
          {                                                                 \
            \"env\": \"JAVA_HOME\",                                         \
            \"descr\": \"/usr/lib/jvm/java-8-openjdk-amd64\",               \
            \"optional\": false                                             \
          },                                                                \
          {                                                                 \
            \"env\": \"JAVA_VERSION\",                                      \
            \"descr\": \"8u121\",                                           \
            \"optional\": false                                             \
          },                                                                \
          {                                                                 \
            \"env\": \"JAVA_DEBIAN_VERSION\",                               \
            \"descr\": \"8u121-b13-1~bpo8+1\",                              \
            \"optional\": false                                             \
          },                                                                \
          {                                                                 \
            \"env\": \"CA_CERTIFICATES_JAVA_VERSION\",                      \
            \"descr\": \"20161107~bpo8+1\",                                 \
            \"optional\": false                                             \
          },                                                                \
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
            \"env\": \"TINI_VERSION\",                                      \
            \"descr\": \"0.13.2\",                                          \
            \"optional\": false                                             \
          },                                                                \
          {                                                                 \
            \"env\": \"TINI_SHA\",                                          \
            \"descr\": \"afbf8de8a63ce8e4f18cb3f34dfdbbd354af68a1\",        \
            \"optional\": false                                             \
          },                                                                \
          {                                                                 \
            \"env\": \"JENKINS_VERSION\",                                   \
            \"descr\": \"2.32.3\",                                          \
            \"optional\": false                                             \
          },                                                                \
          {                                                                 \
            \"env\": \"JENKINS_UC\",                                        \
            \"descr\": \"https://updates.jenkins.io\",                      \
            \"optional\": true                                              \
          }                                                                 \
      ]"
