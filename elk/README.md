# elkx-docker
Elasticsearch, Logstash, Kibana (ELK) with X-Pack Docker image, based on the Docker image of [Sébastien Pujadas](https://github.com/spujadas/elkx-docker).

## Parameters

- **/var/lib/elasticsearch** Elasticsearch data.
- **/etc/elasticsearch** Elasticsearch config folder.
- **/etc/logstash/conf.d** Logstash config folder.
- **/opt/kibana/config** Kibana config folder.

# Important
As explained in https://github.com/spujadas/elk-docker/issues/92#issuecomment-263152557 please make sure the VM running this container is configured correctly.

{code:bash}
# open a console into the VM that will be running the elk docker container
sudo vi /var/lib/boot2docker/bootlocal.sh
# Add this line into /var/lib/boot2docker/bootlocal.sh
sysctl -w vm.max_map_count=262144
sudo chmod +x /var/lib/boot2docker/bootlocal.sh
{code}

For some reason /var/lib/boot2docker is not being preserved after reboot. Further research needed.

NOTE: https://github.com/docker/machine/issues/3859
