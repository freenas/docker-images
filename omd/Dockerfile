FROM debian:8
MAINTAINER Simon Meggle<simon.meggle@consol.de>
EXPOSE 80 443 22 4730 5666

LABEL org.freenas.interactive="false"                                   \
      org.freenas.version="20170323"                                    \
      org.freenas.upgradeable="true"                                    \
      org.freenas.expose-ports-at-host="true"                           \
      org.freenas.autostart="true"                                      \
      org.freenas.web-ui-protocol="https"                               \
      org.freenas.web-ui-port=443                                       \
      org.freenas.web-ui-path="/cmk"                                    \

      org.freenas.port-mappings="80:80/tcp,443:443/tcp,22:22/tcp,4730:4730/tcp,5666:5666/tcp" \
      org.freenas.volumes="[                                            \
          {                                                             \
              \"name\": \"/opt/omd/sites/cmk/etc\",                     \
              \"descr\": \"CMK site /etc\"                              \
          },                                                            \
          {                                                             \
              \"name\": \"/opt/omd/sites/cmk/var\",                     \
              \"descr\": \"CMK site /var\"                              \
          },                                                            \
          {                                                             \
              \"name\": \"/opt/omd/sites/cmk/local\",                   \
              \"descr\": \"CMK site /local\"                            \
          }                                                             \
      ]"                                                                \
       org.freenas.settings="[                                          \
          {                                                             \
              \"env\": \"PUID\",                                        \
              \"descr\": \"UserID - Keep as 1000\",                     \
              \"optional\": false                                       \
          },                                                            \
          {                                                             \
              \"env\": \"PGID\",                                        \
              \"descr\": \"GroupID - Keep as 1000\",                    \
              \"optional\": false                                       \
          },                                                            \
          {                                                             \
              \"env\": \"TZ\",                                          \
              \"descr\": \"Timezone - eg Europe/London\",               \
              \"optional\": true                                        \
          }                                                             \
      ]"

ENV REFRESHED 20170323

### OMD installation ######################################
ENV DEBIAN_FRONTEND noninteractive

RUN  echo 'net.ipv6.conf.default.disable_ipv6 = 1' > /etc/sysctl.d/20-ipv6-disable.conf; \
    echo 'net.ipv6.conf.all.disable_ipv6 = 1' >> /etc/sysctl.d/20-ipv6-disable.conf; \
    echo 'net.ipv6.conf.lo.disable_ipv6 = 1' >> /etc/sysctl.d/20-ipv6-disable.conf; \
    cat /etc/sysctl.d/20-ipv6-disable.conf; sysctl -p

RUN apt-get update && \
    apt-get install -y lsof vim git openssh-server tree tcpdump libevent-2.0-5

RUN gpg --keyserver keys.gnupg.net --recv-keys F8C1CA08A57B9ED7 && gpg --armor --export F8C1CA08A57B9ED7 | apt-key add - && \
    echo "deb http://labs.consol.de/repo/testing/debian $(cat /etc/os-release  | grep 'VERSION=' | tr '(' ')' | cut -d ')' -f2) main" > /etc/apt/sources.list.d/labs-consol-testing.list && \
    apt-get update && \
    apt-get install -y omd-labs-edition-daily && \
    apt-get clean

RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

#### user environment ######################################
ENV HOME=/root
WORKDIR $HOME
ADD ./scripts/debian/start.sh $HOME

#### ansible ################################################
ARG ANSIBLE_DROPIN=$HOME/ansible_dropin
ENV ANSIBLE_DROPIN=$ANSIBLE_DROPIN
ENV PYTHONPATH=/omd/versions/default/lib/python/
ENV ANSIBLE_CONFIG=${ANSIBLE_DROPIN}/ansible.cfg
ENV ANSIBLE_VERBOSITY=

### -- OMD site creation (DEMO) ##############################
ARG SITENAME=demo
ENV SITENAME=cmk
RUN echo "export SITENAME=$SITENAME" > .sitename.env
RUN sed -i 's|echo "on"$|echo "off"|' /opt/omd/versions/default/lib/omd/hooks/TMPFS
RUN echo "create OMD site: $SITENAME" && omd create -u 1000 -g 1000 $SITENAME || true

### PERSISTENT VOLUMES #######################################
# Dynamic OMD data folders (etc, local, var) are renamed to .ORIG.
# On run time the start script (start.sh) will check if any of this folders is mounted from the host
# - if not => no data container mounts
#   -> remove symlinks
#   -> move .ORIG paths to the original location
# - if data container mount points
#   -> nothing to do, use the mounts.
RUN mv /omd/sites/$SITENAME/local /omd/sites/$SITENAME/local.ORIG && \
    mv /omd/sites/$SITENAME/etc /omd/sites/$SITENAME/etc.ORIG && \
    mv /omd/sites/$SITENAME/var /omd/sites/$SITENAME/var.ORIG

# -- ONBUILD
# when used as a base image, this instructions trigger the creation of another site if NEW_SITENAME is not `demo`
ONBUILD ARG NEW_SITENAME=demo
ONBUILD ENV NEW_SITENAME=$NEW_SITENAME
ONBUILD RUN [ "$NEW_SITENAME" != "demo" ] && echo "export SITENAME=$NEW_SITENAME" > .sitename.env && echo "CREATE new site:$NEW_SITENAME" && omd -f rm $SITENAME && omd create -u 1001 -g 1001 $NEW_SITENAME || true
ONBUILD RUN [ "$NEW_SITENAME" != "demo" ] &&  mv /omd/sites/$NEW_SITENAME/local /omd/sites/$NEW_SITENAME/local.ORIG && \
    mv /omd/sites/$NEW_SITENAME/etc /omd/sites/$NEW_SITENAME/etc.ORIG && \
    mv /omd/sites/$NEW_SITENAME/var /omd/sites/$NEW_SITENAME/var.ORIG || true

CMD ["/root/start.sh"]
