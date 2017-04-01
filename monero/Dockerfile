FROM kannix/monero-full-node:latest
LABEL org.freenas.interactive="true" \
      org.freenas.version="1.4" \
      org.freenas.upgradeable="false" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.port-mappings="18080:18080/tcp,18081:18081/tcp" \
      org.freenas.volumes="[						\
          {								\
              \"name\": \"/root/.bitmonero\",					\
              \"descr\": \"Configuration and blockchain\"			\
          }								\
      ]"
ENTRYPOINT ["./monerod"]
CMD ["--restricted-rpc", "--rpc-bind-ip=0.0.0.0", "--confirm-external-bind", "--log-level=1"]
