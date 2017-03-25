FROM clonedeploy/clonedeploy:latest
LABEL org.freenas.interactive="false" \
      org.freenas.version="1.2.1.0002" \
      org.freenas.upgradeable="false" \
      org.freenas.expose-ports-at-host="false" \
      org.freenas.autostart="false" \
	   org.freenas.capabilities-add="NET_BROADCAST" \
      org.freenas.web-ui-protocol="http" \
      org.freenas.web-ui-port="80" \
      org.freenas.web-ui-path="" \
      org.freenas.volumes="[					\
          {							\
              \"name\": \"/var/www/html\",				\
              \"descr\": \"Application Volume\"		\
          },							\
          {							\
              \"name\": \"/var/lib/mysql\",				\
              \"descr\": \"Database Volume\"		\
          },							\
          {							\
              \"name\": \"/cd_dp\",				\
              \"descr\": \"Images Volume\"			\
		   },							\
          {							\
              \"name\": \"/tftpboot\",				\
              \"descr\": \"Tftp Volume\"			\
          }		\
      ]"							\
      org.freenas.settings="[ 					\
          {							\
              \"env\": \"RW_SMB_PASS\",					\
              \"descr\": \"SMB Share Read-Write Password\",		\
              \"optional\": true				\
          },							\
          {							\
              \"env\": \"RO_SMB_PASS\",			\
              \"descr\": \"SMB Share Read-Only Password\",	\
              \"optional\": true				\
          },							\
          {							\
              \"env\": \"MYSQL_ROOT_PASS\",			\
              \"descr\": \"MYSQL Root Password\",			\
              \"optional\": true				\
          }		\					
      ]"