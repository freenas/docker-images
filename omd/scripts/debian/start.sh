#!/usr/bin/env bash

source /root/.sitename.env

echo "Config and start OMD site: $SITENAME"
echo "--------------------------------------"

trap "omd stop $SITENAME; exit 0" SIGKILL SIGTERM SIGHUP SIGINT EXIT

echo "Data volume check..."
echo "--------------------------------------"
for dir in "local" "etc" "var"; do
  datadir="/opt/omd/sites/$SITENAME/$dir"
  if mount | grep -q "$datadir"; then
    # folder is mounted from volume
    echo " * [EXTERNAL] $datadir"
    if [ ! "$(ls -A $datadir)" ]; then
        # Populate etc/ directory
        echo " * [EXTERNAL] $datadir is empty -> initialize it"
        echo "--------------------------------------"
        rsync -a "$datadir.ORIG/" "$datadir/"
    fi
    chown -R "$SITENAME:$SITENAME" "$datadir"
  else
    # no volume mounts, move ORIG folder back to its default location
    mv $datadir{.ORIG,}
    echo " * [LOCAL]    $datadir"
  fi
done

echo

echo "Checking for Ansible drop-in..."
echo "--------------------------------------"
if [ -r "$ANSIBLE_DROPIN/playbook.ym"l ]; then
  echo "Executing Ansible drop-in..."
  /omd/versions/default/bin/ansible-playbook -i localhost, "$ANSIBLE_DROPIN/playbook.yml" -c local $ANSIBLE_VERBOSITY -e SITENAME=$SITENAME
else
  echo "Nothing to do ($ANSIBLE_DROPIN/playbook.yml not found)."
fi

echo

echo "omd-labs: Starting site $SITENAME..."
echo "--------------------------------------"
omd start $SITENAME

echo

echo "omd-labs: Starting Apache web server..."
echo "--------------------------------------"

/usr/sbin/apache2ctl start
while true; do sleep 10; done
