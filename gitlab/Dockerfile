FROM gitlab/gitlab-ce:9.1.2-ce.0
LABEL org.freenas.interactive="false"\
      org.freenas.version="9.1.2"\
      org.freenas.upgradeable="false"\
      org.freenas.expose-ports-at-host="true"\
      org.freenas.autostart="true"\
      org.freenas.web-ui-protocol="http"\
      org.freenas.web-ui-port=80\
      org.freenas.volumes="[\
          {\
              \"name\": \"/var/opt/gitlab\",\
              \"descr\": \"Storage\"\
          },\
          {\
              \"name\": \"/var/log/gitlab\",\
              \"descr\": \"Logs\"\
          },\
          {\
              \"name\": \"/etc/gitlab\",\
              \"descr\": \"Config\"\
          }\
      ]"\
      org.freenas.settings="[\
          {\
              \"env\": \"GITLAB_OMNIBUS_CONFIG\",\
              \"descr\": \"Additions to the gitlab omnibus config (not written to file)\",\
              \"optional\": true\
          }\
      ]"
