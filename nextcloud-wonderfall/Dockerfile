FROM wonderfall/nextcloud:latest
LABEL org.freenas.interactive="false" \
      org.freenas.version="11.0-Stable-FNv1" \
      org.freenas.upgradeable="false" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.port-mappings="8888:8888/tcp" \
      org.freenas.autostart="true" \
      org.freenas.web-ui-protocol="http" \
      org.freenas.web-ui-port="8888" \
      org.freenas.web-ui-path="" \
      org.freenas.volumes="[					\
          {							\
              \"name\": \"/data\",				\
              \"descr\": \"Nextcloud Data\"		        \
          },							\
          {							\
              \"name\": \"/config\",				\
              \"descr\": \"Nextcloud config.php location\"      \
          },							\
          {							\
              \"name\": \"/apps2\",				\
              \"descr\": \"Nextcloud Downloaded Apps\"          \
          },                                                    \
          {							\
              \"name\": \"/nextcloud/themes\",                  \
              \"descr\": \"Nextcloud Themes Location\"          \
          }                                                     \
      ]"                                                        \
      org.freenas.settings="[ 					\
          {							\
              \"env\": \"UID\",					\
              \"descr\": \"User ID\",                           \
              \"optional\": true                                \
          },							\
          {                                                     \
              \"env\": \"GID\",                                 \
              \"descr\": \"Group ID\",                          \
              \"optional\": true                                \
          },                                                    \
          {							\
              \"env\": \"UPLOAD_MAX_SIZE\",                     \
              \"descr\": \"maximum upload size (default : 10G)\", \
              \"optional\": true				\
          },							\
          {							\
              \"env\": \"APC_SHM_SIZE\",                        \
              \"descr\": \"apc memory size (default : 128M)\",  \
              \"optional\": true				\
          },							\
          {							\
              \"env\": \"OPCACHE_MEM_SIZE\",                    \
              \"descr\": \"opcache memory size in megabytes (default : 128)\", \
              \"optional\": true				\
          },							\
          {							\
              \"env\": \"MEMORY_LIMIT\",                        \
              \"descr\": \"php memory limit (default : 512M)\", \
              \"optional\": true				\
          },							\
          {							\
              \"env\": \"CRON_PERIOD\",                         \
              \"descr\": \"time interval between two cron tasks (default : 15m)\", \
              \"optional\": true				\
          },							\
          {                                                     \
              \"env\": \"CRON_MEMORY_LIMIT\",                   \
              \"descr\": \"memory limit for PHP when executing cronjobs (default : 1024m)\", \
              \"optional\": true                                \
          },                                                    \
          {                                                     \
              \"env\": \"TZ\",                                  \
              \"descr\": \"the system/log timezone (default : Etc/UTC)\", \
              \"optional\": true                                \
          },                                                    \
          {                                                     \
              \"env\": \"ADMIN_USER\",                          \
              \"descr\": \"username of the admin account (default : none, web configuration)\", \
              \"optional\": true                                \
          },                                                    \
          {                                                     \
              \"env\": \"ADMIN_PASSWORD\",                      \
              \"descr\": \"password of the admin account (default : none, web configuration)\", \
              \"optional\": true                                \
          },                                                    \
          {                                                     \
              \"env\": \"DOMAIN\",                              \
              \"descr\": \"domain to use during the setup (default : localhost)\", \
              \"optional\": true                                \
          },                                                    \
          {                                                     \
              \"env\": \"DB_TYPE\",                             \
              \"descr\": \"database type (sqlite3, mysql or pgsql) (default : sqlite3)\", \
              \"optional\": true                                \
          },                                                    \
          {                                                     \
              \"env\": \"DB_NAME\",                             \
              \"descr\": \"name of database (default : none)\", \
              \"optional\": true                                \
          },                                                    \
          {                                                     \
              \"env\": \"DB_USER\",                             \
              \"descr\": \"username for database (default : none)\", \
              \"optional\": true                                \
          },                                                    \
          {                                                     \
              \"env\": \"DB_PASSWORD\",                         \
              \"descr\": \"password for database user (default : none)\", \
              \"optional\": true                                \
          },                                                    \
          {							\
              \"env\": \"DB_HOST\",			        \
              \"descr\": \"database host (default : none)\",    \
              \"optional\": true                                \
          }		\					
      ]"
