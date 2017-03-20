[appurl]: https://en.wikipedia.org/wiki/Nginx
[![nginx](https://raw.githubusercontent.com/docker-library/docs/01c12653951b2fe592c1f93a13b4e289ada0e3a1/nginx/logo.png)][appurl]

# What is Nginx?

Nginx (pronounced "engine-x") is an open source reverse proxy server for HTTP, HTTPS, SMTP, POP3, and IMAP protocols, as well as a load balancer, HTTP cache, and a web server (origin server). The nginx project started with a strong focus on high concurrency, high performance and low memory usage. It is licensed under the 2-clause BSD-like license and it runs on Linux, BSD variants, Mac OS X, Solaris, AIX, HP-UX, as well as on other *nix flavors. It also has a proof of concept port for Microsoft Windows.

# How to use this image

Simply point the ```/usr/share/nginx/html``` volume at the content on your host using the volume mappings.  You may also wish to set this volume as Read-Only.

## exposing the port

Remap port 8080 in the container to port 80 on your bridged network, or leave it as 8080 if using NAT so as not to conflict with FreeNAS' own web server.

Then you can hit `http://localhost:8080` or `http://host-ip:8080` in your browser.

For information on the syntax of the Nginx configuration files, see [the official documentation](http://nginx.org/en/docs/) (specifically the [Beginner's Guide](http://nginx.org/en/docs/beginners_guide.html#conf_structure)).

Be sure to include `daemon off;` in your custom configuration to ensure that Nginx stays in the foreground so that Docker can track the process properly (otherwise your container will stop immediately after starting)!

If you wish to adapt the default configuration, use something like the following to copy it from a running Nginx container:

```
cp some-nginx:/etc/nginx/nginx.conf /some/nginx.conf
```
