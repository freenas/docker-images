FROM library/wordpress:4-php7.1-apache
LABEL org.freenas.interactive="false" 				\
      org.freenas.version="1.0.1"				\
      org.freenas.upgradeable="true" 				\
      org.freenas.expose-ports-at-host="true" 			\
      org.freenas.autostart="true" 				\
      org.freenas.port-mappings="80:8888/tcp,443:4433/tcp" 	\
      org.freenas.settings="[					\
          {							\
              \"env\": \"WORDPRESS_DB_HOST\",			\
              \"descr\": \"SQL DB IP Address\",			\
              \"optional\": false				\
	  },							\
          {							\
              \"env\": \"WORDPRESS_DB_USER\",			\
              \"descr\": \"SQL DB Username\",			\
              \"optional\": false				\
	  },							\
          {							\
              \"env\": \"WORDPRESS_DB_PASSWORD\",		\
              \"descr\": \"SQL DB Password\",			\
              \"optional\": false				\
	  },							\
          {							\
              \"env\": \"WORDPRESS_DB_NAME\",			\
              \"descr\": \"SQL DB Name\",			\
              \"optional\": true				\
	  },							\
          {							\
              \"env\": \"WORDPRESS_TABLE_PREFIX\",		\
              \"descr\": \"SQL Table Prefix\",			\
              \"optional\": true				\
	  }							\
      ]" 
