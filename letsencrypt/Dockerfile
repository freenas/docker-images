FROM linuxserver/letsencrypt:latest
LABEL org.freenas.interactive="false" 				\
      org.freenas.version="1" 				\
      org.freenas.autostart="true" 				\
      org.freenas.bridged="true" 				\
      org.freenas.dhcp="true" 				\
      org.freenas.privileged="true"				\
      org.freenas.volumes="[					\
          {						\
              \"name\": \"/config\",				\
              \"descr\": \"Config storage space\"			\
          }						\
      ]"							\
      org.freenas.settings="[ 				\
          {						\
              \"env\": \"EMAIL\",				\
              \"descr\": \"your email for cert registration\",	\
              \"optional\": false				\
          },						\
          {						\
              \"env\": \"DHLEVEL\",				\
              \"descr\": \"dhparams bit value - default=2048, can be set to 1024 or 4096\", \
              \"optional\": true				\
          },						\
          {						\
              \"env\": \"URL\",				\
              \"descr\": \"the top url you have control over customdomain.com if you own it, or customsubdomain.ddnsprovider.com if dynamic dns)\",	\
              \"optional\": false				\
          },						\
          {						\
              \"env\": \"SUBDOMAINS\",				\
              \"descr\": \"subdomains you'd like the cert to cover (comma separated, no spaces) ie. www,ftp,cloud\",				\
              \"optional\": true				\
          },						\
          {						\
              \"env\": \"ONLY_SUBDOMAINS\",			\
              \"descr\": \"if you wish to get certs only for certain subdomains, but not the main domain (main domain may be hosted on another machine and cannot be validated), set this to true\",				\
              \"optional\": true				\
          },						\
          {						\
              \"env\": \"TZ\",				\
              \"descr\": \"timezone ie. America/New_York\",		\
              \"optional\": true				\
         },						\
          {						\
              \"env\": \"PGID\",				\
              \"descr\": \"GroupID\",				\
              \"optional\": true				\
          },						\
          {						\
              \"env\": \"PUID\",				\
              \"descr\": \"UserID\",				\
              \"optional\": true				\
         }						\
      ]"
