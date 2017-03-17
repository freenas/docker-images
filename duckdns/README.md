# Duck DNS - Free DNS service

Duck DNS is a free service which will point a DNS (sub domains of duckdns.org) to an IP of your choice. The service is completely free, and doesn't require reactivation or forum posts to maintain its existence.

Setting up the application

First, go to duckdns site, register your subdomain and retrieve your token
Then run the docker create command above with your subdomain(s) and token
It will update your IP with the DuckDNS service every 5 minutes

# Settings

PGID for GroupID - see below for explanation
PUID for UserID - see below for explanation
SUBDOMAINS for subdomains - multiple subdomains allowed, comma separated, no spaces
TOKEN for DuckDNS token
TZ for timezone information, eg Europe/London
