# A Graphite server w/ statsd.

Base container is hopsoft/graphite-statsd with FreeNAS metadata added. 

## Login instructions:

```
Username: root
Password: root
```
### Setup Graphite to receive data from FreeNAS

1. In FreeNAS go to _System_ -> _Preferences_ and scroll to the bottom and enter the IP of the Graphite server in the field labeled _Remote Graphite Server_ and click _Add_, then click _Save_
2. Open up the Graphite Web UI and login with the username **root** and the password **root**
3. In the tree in the left-hand pane, expand the _Metrics_ folder, then _localhost_ and you should see a bunch of folders under that, these are all statistics reported from FreeNAS
4. If you click on a sub-folder, such as **cpu-0**, then **cpu-system**, then **value**, the chart in the center pane will populate with data. 
   
   _Note:_ You probably won't see anything if you have just recently created the Graphite-statd Docker container since data is collected over time and displayed in 4 hour spans.

That's pretty much it for Graphite, it's pretty simple. If you would like pretty charts and tons of configurable metrics, use the Grafana Docker container in conjunction with Graphite.
