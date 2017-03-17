# A Grafana server (system statistics monitoring visualization toolkit).

Base container is grafana/grafana with FreeNAS metadata added. All variables in conf/grafana.ini can be overriden using environment variables.

### How to setup Grafana to receive data from FreeNAS' Graphite sender

1. Open up the WebUI and login with the username **admin** and the password **admin**
2. Once at the _Home_ dashboard click on the spiral in the upper left-hand corner and click _Data Sources_
3. Select _Add Data Source_, then select a name for the data source, mark it as _Default_ if you would like; leave the type as _Graphite_; set the URL to the the IP of your Graphite Docker Container (which should already be setup to receive data from FreeNAS) and use **port 80** if the container is **bridged**, otherwise use **port 5080**; leave everything under _HTTP Auth_ alone; click on the _Dashboards_ tab and select _import_ for _Graphite Carbon Metrics_; finally click _Add_ under the config tab

Congratulations you have just setup Grafana to receive data from FreeNAS via the Graphite Docker Container! Now the real fun can begin.

### How to get Grafana to display the received data in pretty graphs

1. You can click on either the spiral and select _Dashboards_ and click _New_ or click on the dashboard drop down menu (between the spiral and the gear) and select _Create New_ at the bottom. This will bring you to a new dashboard where you can create a customized dashboard to pretty much show whatever you want, and pretty much however you want. It's highly configurable!
2. Let's create a graph for CPU temperature in degrees Celsius for one of our CPU cores, so select the _Graph_ panel, which will create a new graph, which will be empty.
3. To fill it up with data click the word _Panel Title_ which will open up a small menu above the words, click _Edit_
4. This will open up a edit menu. Under the _Metrics_ tab, in the row labeled _A_ click on _Select Metric_ and select _localhost_ (at least that's what mine says); click _Select Metric_ once again and select _cputemp-0_; Select _Temperature_ from the next field; Select _Value_ from the field after that
5. Once the last value is set the graph auto-generates right before your eyes like magic! There's more customization to be done, unless you want to read your temperatures using the Kelvin scale
6. Click on the _Axes_ tab and set _Scale_ under _Left Y_ to _Celsius_ under the _Temperature_ menu
7. You can overlay more cores on to the same graph by clicking on the button with the three lines in row _A_, then selecting _Duplicate_, all you have to change is the second field (cputemp-N)
8. Under the _General_ tab you can enter a name to describe this graph using the _Title_ field
9. Once you're finished customizing the graph click the _X_ to close the _Edit_ panel, then click the _Save_ icon between the _Dashboard_ menu and the gear icon. Give the Panel a name, and click save. You can add more panels to the same dashboard using the same steps before or after saving the dashboard.

Here is a instructional video from the creators of Graphana explaining this in visual form:

<a href="http://www.youtube.com/watch?feature=player_embedded&v=sKNZMtoSHN4
" target="_blank"><img src="http://img.youtube.com/vi/sKNZMtoSHN4/0.jpg" 
alt="Creating a New Dashboard" width="240" height="180" border="10" /></a>

### ENV Variables
* GF_INSTALL_PLUGINS 
 * Set this variable to a CSV list of Grafana plugins to install, this will pass each plugin name to `grafana-cli plugins install`. For example `grafana-clock-panel,grafana-simple-json-datasource,grafana-piechart-panel`. 
