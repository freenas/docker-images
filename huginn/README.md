![Huginn](https://raw.github.com/cantino/huginn/master/media/huginn-logo.png "Your agents are standing by.")

-----

## What is Huginn?

Huginn is a system for building agents that perform automated tasks for you online.  They can read the web, watch for events, and take actions on your behalf.  Huginn's Agents create and consume events, propagating them along a directed graph.  Think of it as a hackable Yahoo! Pipes plus IFTTT on your own server.  You always know who has your data.  You do.

![the origin of the name](https://raw.githubusercontent.com/cantino/huginn/master/doc/imgs/the-name.png)

#### Here are some of the things that you can do with Huginn:

* Track the weather and get an email when it's going to rain (or snow) tomorrow ("Don't forget your umbrella!")
* List terms that you care about and receive emails when their occurrence on Twitter changes.  (For example, want to know when something interesting has happened in the world of Machine Learning?  Huginn will watch the term "machine learning" on Twitter and tell you when there is a spike in discussion.)
* Watch for air travel or shopping deals
* Follow your project names on Twitter and get updates when people mention them
* Scrape websites and receive emails when they change
* Connect to Adioso, HipChat, Basecamp, Growl, FTP, IMAP, Jabber, JIRA, MQTT, nextbus, Pushbullet, Pushover, RSS, Bash, Slack, StubHub, translation APIs, Twilio, Twitter, Wunderground, and Weibo, to name a few.
* Send digest emails with things that you care about at specific times during the day
* Track counts of high frequency events and send an SMS within moments when they spike, such as the term "san francisco emergency"
* Send and receive WebHooks
* Run custom JavaScript or CoffeeScript functions
* Track your location over time
* Create Amazon Mechanical Turk workflows as the inputs, or outputs, of agents (the Amazon Turk Agent is called the "HumanTaskAgent"). For example: "Once a day, ask 5 people for a funny cat photo; send the results to 5 more people to be rated; send the top-rated photo to 5 people for a funny caption; send to 5 final people to rate for funniest caption; finally, post the best captioned photo on my blog."

[![Gitter](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/cantino/huginn?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge) [![Changelog #199](https://img.shields.io/badge/changelog-%23199-lightgrey.svg)](https://changelog.com/199)

Join us in our [Gitter room](https://gitter.im/cantino/huginn) to discuss the project and follow [@tectonic](https://twitter.com/tectonic) for updates as Huginn evolves.

### Join us!

Want to help with Huginn?  All contributions are encouraged!  You could make UI improvements, [add new Agents](https://github.com/cantino/huginn/wiki/Creating-a-new-agent), write [documentation and tutorials](https://github.com/cantino/huginn/wiki), or try tackling [issues tagged with #help-wanted](https://github.com/cantino/huginn/issues?direction=desc&labels=help-wanted&page=1&sort=created&state=open).  Please fork, add specs, and send pull requests!

Really want a fix or feature? Want to solve some community issues and earn some extra coffee money? Take a look at the [current bounties on Bountysource](https://www.bountysource.com/trackers/282580-huginn).

Have an awesome idea but not feeling quite up to contributing yet? Head over to our [Official 'suggest an agent' thread ](https://github.com/cantino/huginn/issues/353) and tell us!

## Demos

Please checkout the [Huginn Introductory Screencast](http://vimeo.com/61976251)!


## Volumes:

* `/var/lib/mysql`  - Folder to store MySQL database for Huginn.


## Other Info:

* default user is admin
* default password is password