DaveOS is an FTP automation tool that periodically scans given host locations for new files. It can be configured for various purposes, including listening for specific files to appear in the host location, ready for it to download and then move, if required. It also supports completion notifications as well as downstream API calls, to further the workflow.

docker create \
  --name=davos \
  -v <path to data>:/config \
  -v <path to downloads folder>:/download
  -e PGID=<gid> -e PUID=<uid>  \
  -p 8080:8080 \
  linuxserver/davos

The application does not require any set up other than starting the docker container. Further documentation can be found on the davos GitHub repository page.

Common WebUI port remapped from 8080 to 34567.