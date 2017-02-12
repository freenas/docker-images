FROM garland/docker-s3cmd:latest
ENV cmd sync-local-to-s3

LABEL org.freenas.interactive="false" \
      org.freenas.version="1" \
      org.freenas.upgradeable="true" \
      org.freenas.expose-ports-at-host="false" \
      org.freenas.autostart="false" \
      org.freenas.volumes="[						\
          {								\
              \"name\": \"/opt/src\",					\
              \"descr\": \"Directory to be uploaded to S3\"		\
          }								\
      ]" \
      org.freenas.settings="[ 						\
          {								\
              \"env\": \"aws_key\",					\
              \"descr\": \"S3 key\",					\
              \"optional\": false					\
          },								\
          {								\
              \"env\": \"aws_secret\",					\
              \"descr\": \"S3 secret\",					\
              \"optional\": false					\
          }, 								\
          {								\
              \"env\": \"DEST_S3\",					\
              \"descr\": \"S3 bucket\",					\
              \"optional\": false					\
          }								\
      ]"

