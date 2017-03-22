Skip to content
This repository
Search
Pull requests
Issues
Gist
 @educatedwarrior
 Sign out
 Watch 2
  Unstar 13
 Fork 6 hurricanehrndz/docker-containers
 Code  Issues 2  Pull requests 0  Projects 0  Wiki  Pulse  Graphs
You’re editing a file in a project you don’t have write access to. We’ve created a fork of this project for you to commit your proposed changes to. Submitting a change to this file will write it to a new branch in your fork, so you can send a pull request.
docker-containers/subsonic/ 
README.md
   or cancel
    
 Edit file    Preview changes
216
itself. Additionally, add the same line of code to your `go` file to make the
217
change persistent.
218
```
219
echo "0 2 * * * docker exec Subsonic update" | sudo tee -a /var/spool/cron/crontabs/root
220
```
221
​
222
​
223
# Technical information:
224
​
225
By default the image has been created to run with UID and GID 1000. If using
226
the automatic install method from Docker, the container is set to run with the
227
UID and GID of of the user executing the `subsonic` wrapper script.
228
Additionally, the wrapper script by default saves subsonic's database and
229
settings in a hidden sub folder in the executing user's home directory. Most
230
default settings can be adjusted by passing the appropriate environment
231
variable. Here is a list of any and all applicable environment variables that
232
can be override by the end user.
233
​
234
## Environment Variables:
235
​
236
You can adjust some of the default settings set for container/application by
237
passing any or all of the following environment variable:  
238
​
239
| ENV VAR        | Definition                                                                     |
240
| ------------   | ------------------------------------------------------------------------------ |
241
| APP_USER       | Name of user the service will run as.\[4\]                                     |
242
| APP_UID        | UID assigned to APP_USER upon creation, or will query APP_USER's ID.\[3\]      |
243
| APP_GID        | GID assigned to APP_USER upon creation, or will query APP_USER's GID.\[3\]     |
244
| APP_CONFIG     | Location where application will store settings and database on host.\[1\]      |
245
| HTTP_PORT      | App's Web UI port used to configure and access the service.\[2\]               |
246
| HTTPS_PORT     | App's Web UI SSL port used to configure and access the service.\[2\]           |
247
| MAX_MEM        | maximum Java heap size in megabytes. Default value is 150.                     |
248
| KEEP_TRANSCODE | make transcode directory persistent                                            |
249
| CONTEXT_PATH   | prefix on path portion of the url where requests will be routed to             |
250
​
251
\[1\]: Variable is applicable only during install.  
252
\[2\]: Variable is applicable during install, when invoking installed wrapper script or systemd service.  
253
\[3\]: Variable is applicable only when invoking docker run directly.  
254
\[4\]: Variable is applicable in all scenarios.  
255
​
256
If you set HTTPS_PORT to something else other than `0` all HTTP request will be
257
redirected to HTTPS.
258
​
259
Please read Docker documentation on [environment variables](https://docs.docker.com/engine/reference/run/#env-environment-variables) for more information.
260
​
261
## Volumes:
262
​
263
* `/subsonic`  - Folder to store Subsonic's log, configuration and database.
264
* `/music`     - Default music folder.
265
* `/podcasts`  - Default podcast folder.
266
* `/playlists` - Default playlists folder.
267
​
268
​
269
# Manual Run and Installation:
270
​
271
Of course you can always run docker image manually. Please be aware that if you
272
wish your data to remain persistent you need to provide a location for the
273
`/config` volume. For example,
274
```
275
docker run -d --net=host -v /*your_subsonichome_location*:/subsonic \
276
                         -v /*your_music_folder_location*:/music \
277
                         -v /*your_podcast_folder_location*:/podcasts \
278
                         -e TZ=America/Edmonton
279
                         --name=subsonic hurricane/subsonic
280
```
281
All the information mention previously regarding user UID and GID still applies
282
when executing a docker run command.
283
​
284
​
285
# License
286
​
287
Code released under the [MIT license](./LICENSE).
288
​
289
​
290
# Donation
291
​
292
[@hurricanehrndz](https://github.com/hurricanehrndz): [![PayPal](https://www.paypalobjects.com/en_US/i/btn/btn_donate_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=74S5RK533DD6C)
293
​
 
@educatedwarrior
Propose file change

Update 

Add an optional extended description…
 Propose file change  Cancel
Contact GitHub API Training Shop Blog About
© 2017 GitHub, Inc. Terms Privacy Security Status Help