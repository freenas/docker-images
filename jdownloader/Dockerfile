FROM dbarton/jdownloader
LABEL org.freenas.interactive="false"				\
      org.freenas.version="2"					\
      org.freenas.upgradeable="true"				\
      org.freenas.expose-ports-at-host="true"			\
      org.freenas.autostart="true"				\
      org.freenas.volumes="[					\
          {							\
              \"name\": \"/jdownloader/cfg\",			\
              \"descr\": \"Configuration files directory\"	\
          },							\
          {							\
              \"name\": \"/jdownloader/Downloads\",		\
              \"descr\": \"downloads Folder\"			\
          }							\	
       ]"							\
       org.freenas.settings="[					\
          {							\
              \"env\": \"JDOWNLOADER_GID\",			\
              \"descr\": \"PGID assigned upon creation\",	\
              \"optional\": true				\
          },							\
          {							\
              \"env\": \"JDOWNLOADER_UID\",			\
              \"descr\": \"PUID assigned upon creation\",	\
              \"optional\": true				\
          }							\
      ]"        
