This container sets up an Nginx webserver and reverse proxy with php support and a built-in letsencrypt client that automates free SSL server certificate generation and renewal processes. It also contains fail2ban for intrusion prevention.

Before running this container, make sure that the url and subdomains are properly forwarded to this container's host.

Port 443 on the internet side of the router should be forwarded to this container's port 443.

If you need a dynamic dns provider, you can use the free provider duckdns.org where the url will be yoursubdomain.duckdns.org and the subdomains can be www,ftp,cloud

The container detects changes to url and subdomains, revokes existing certs and generates new ones during start. It also detects changes to the DHLEVEL parameter and replaces the dhparams file.

If you'd like to password protect your sites, you can use htpasswd. Run the following command on your host to generate the htpasswd file "letsencrypt htpasswd -c /config/nginx/.htpasswd <username>"

## Variables
PORT - the port(s)

/config - all the config files including the webroot reside here

EMAIL - your e-mail address for cert registration

URL - the domain you have control over ("customdomain.com" if you own it, or "customsubdomain.ddnsprovider.com" if dynamic dns)

SUBDOMAINS - subdomains you'd like the cert to cover (comma separated, no spaces) ie. www,ftp,cloud

PGID for GroupID - see below for explanation

PUID for UserID - see below for explanation

TZ - timezone ie. America/New_York
