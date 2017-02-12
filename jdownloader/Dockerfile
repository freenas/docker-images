FROM dbarton/jdownloader
LABEL org.freenas.interactive="false"				\
      org.freenas.version="1"					\
      org.freenas.upgradeable="true"				\
      org.freenas.expose-ports-at-host="true"			\
      org.freenas.autostart="true"				\
      org.freenas.volumes="[					\
          {							\
              \"name\": \"jdownloader/cfg\",			\
              \"descr\": \"Configuration files directory\"	\
          },							\
          {							\
              \"name\": \"jdownloader/downloads\",		\
              \"descr\": \"downloads Folder\"			\
          },							\
          {							\
              \"name\": \"/media\",				\
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
