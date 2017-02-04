docker-s3cmd
============

s3cmd in a Docker container.  This is useful if you are already using Docker.
You can simply pull this container to that Docker server and move things between the local box and S3 by just running
a container.

Using [Alpine linux](https://hub.docker.com/_/alpine/).  This image is 31MB.

# Usage Instruction

## Copy from local to S3:

* Variable: `AWS_KEY=<YOUR AWS KEY>`
* Variable: `AWS_SECRET=<YOUR AWS SECRET>`
* Variable: `BUCKET=s3://garland.public.bucket/database2/`
* Volume: `${LOCAL_FILE}:/opt/src`

* Change `LOCAL_FILE` to file/folder you want to upload to S3

## Copy from S3 to local:

* Variable: `AWS_KEY=<YOUR AWS KEY>`
* Variable: `AWS_SECRET=<YOUR AWS SECRET>`
* Variable: `BUCKET=s3://garland.public.bucket/database`
* Volume: `${LOCAL_FILE}:/opt/dest`

* Change `LOCAL_FILE` to the file/folder where you want to download the files from S3 to the local computer

## Run interactively with s3cmd

* Variable `AWS_KEY=<YOUR AWS KEY>`
* Variable `AWS_SECRET=<YOUR AWS SECRET>`
* Variable `cmd=interactive`
* Volume: `/:/opt/dest`

Then execute the `main.sh` script to setup the s3cmd config file

    /opt/main.sh

Then you can run `s3cmd` commands

    s3cmd ls /
