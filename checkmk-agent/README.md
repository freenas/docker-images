# CheckMK in docker

We put together this simple checkmk image so we could easily use check_mk
in coreos and with docker. This also works with boot2docker on FreeNAS Corral.

Based on xforty/checkmk.  For use with Check_MK Raw or OMD-Labs. http://omdistro.org

# Running It

Requires volume on the VM to link /var/run/docker.sock to /var/run/docker.sock on the container.

Expose port 6556 so that the Check_MK host can collect data.
