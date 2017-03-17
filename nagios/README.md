# Docker-Nagios
Docker image for Nagios

Nagios Core 4.2.4 running on Ubuntu 16.04 LTS with NagiosGraph & NRPE

The default credentials for the web interface is `nagiosadmin` / `nagios`

### Configurations
Nagios Configuration lives in /opt/nagios/etc
NagiosGraph configuration lives in /opt/nagiosgraph/etc

Note: The path for the custom plugins will be /opt/Custom-Nagios-Plugins, you will need to reference this directory in your configuration scripts.

For best results your Nagios image should have access to both IPv4 & IPv6 networks 

### Extra Plugins

* Nagios nrpe [http://exchange.nagios.org/directory/Addons/Monitoring-Agents/NRPE--2D-Nagios-Remote-Plugin-Executor/details]
* Nagiosgraph [http://exchange.nagios.org/directory/Addons/Graphing-and-Trending/nagiosgraph/details]
* JR-Nagios-Plugins -  custom plugins I've created [https://github.com/JasonRivers/nagios-plugins]
* WL-Nagios-Plugins -  custom plugins from William Leibzon [https://github.com/willixix/WL-NagiosPlugins]
* JE-Nagios-Plugins -  custom plugins from Justin Ellison [https://github.com/justintime/nagios-plugins]
