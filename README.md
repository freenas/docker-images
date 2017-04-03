# Docker container build recipes for /r/freenas on Dockerhub
These are the docker image *source files* for everything one sees in the default *freenas* collection on FreeNAS 10.  They are essentially no different than any other Dockerfile you might see on github or dockerhub, though the FreeNAS project has added its own metadata under the *org.freenas* namespace to make guided configuration in its own Docker interface(s) possible (tab-completed values in the CLI, pre-populated forms in the GUI). This metadata is not strictly necessary for using a Docker container with FreeNAS 10, it simply makes a "fill in the blanks" configuration mode possible.

# Docker container metadata for FreeNAS (*org.freenas* namespace)
Here are all of the various "knob settings" specific to FreeNAS which your container can set, and their meanings.  In most cases, the user can also choose to override these settings at container creation time if the defaults are not suitable to their needs.
* `org.freenas.autostart`  (default value: "false")
Whether container should be set to automatically start at boot time or not.
* `org.freenas.capabilities-add` (default value: "")
A list of Docker capabilities to add to container's privileges, in the form of a comma-separated string values, e.g. `SYS_ADMIN,SYS_MODULE`. See https://docs.docker.com/engine/reference/run/#/runtime-privilege-and-linux-capabilities for a full list of Docker privileges.
* `org.freenas.capabilities-drop` (default value: "")
A list of Docker capabilities to remove from container's privileges, in the form of a comma-separated string values, e.g. `SYS_CHROOT,SETCAP`. See https://docs.docker.com/engine/reference/run/#/runtime-privilege-and-linux-capabilities for a full list of Docker privileges that are set by deafult and can be removed.  Warning:  This may cause containers to malfunction if used incorrectly!
* `org.freenas.command` (default value: "")
A command to be run in the container, e.g. `/bin/sh`.
* `org.freenas.privileged` (default value: "false").
This is a boolean property which allows all extra privileges for a container to be turned on (e.g. "the big hammer").  It should only be used with caution, when absolutely required or when docker security is simply not a concern.
* `org.freenas.expose-ports-at-host` (default value: "false")
Whether container should expose its ports list on the host's IP address.
* `org.freenas.interactive'` (default value: "false")
Whether container is an interactive container or not, which is to say that its Console will attach to a single, interactive process (and when this process exits, that container will stop).  Generally only useful for "raw OS" containers like Ubuntu.
* `org.freenas.port-mappings` (default value: none)
A list of container:host port mappings for the container in the following format `containerport`:`hostport`/`udp|tcp`
* `org.freenas.settings` (default value: [])
An array of `variable name`: `Long description` fields for various variables the container wishes to export as "user settable" (this need not be every possible variable the container supports, but those the container author wishes the user to see and set).
* `org.freenas.static-volumes` (default value: [])
An array of directory or file mapping dictionary entries that should be set just to allow the container to work at all and aren't user visible or settable (see `org.freenas.volumes` below for user-settable volume options).  Format for each dictionary entry is `container_path`, `host_path`, and `readonly`. `container_path`refers to the directory/filename on the container, `host_path` the directory/filename on the host, and `readonly` whether the container can write to the directory/filename on the host. See existing Dockerfile for more helpful examples.
* `org.freenas.upgradeable` (default value: "false")
If set to true, the container is capable of upgarding itself internally.
* `org.freenas.version` (default value: '0')
A synthetic version number to present to the user.  Since docker containers don't really have "versions" so much as "tags", yet users tend to think of software (like Plex Media Server) as having specific version numbers, this allows the container author to present a version number that indicates when the container might present an upgrade opportunity.
* `org.freenas.volumes` (default value: [])
An array of directory or file mapping dictionary entries that user can set to control the per-directory, per-file mappings of host (or VM) paths to container paths.  Format for each dictionary entry is `name` and `descr` for the directory/filename and description, respectively (see existing Dockerfile for more helpful examples).
* `org.freenas.web-ui-path` (default: none)
If the container provides a web UI, this should be the path component of the URL to it (the hostname or IP will be filled-in automatically and the port and protocol have their own entries, so this should just be the `/path` component of `http://host[:port]/path`
* `org.freenas.web-ui-port` (default value: none)
If the web UI requires a specific port number, this property should be set.
* `org.freenas.web-ui-protocol` (default value: none)
If the web UI requires a specific protocol, this property should be set

# Making your own Docker container(s) for FreeNAS
Perhaps you have a favorite Docker container that you think would be great for FreeNAS, in which case the FreeNAS 10 project happily accepts pull requests against this repo, but how might you test it first? How, for that matter, could you and your friends create your own *collections* of Docker containers for your own use?  We're glad you asked! The process is actually quite simple, so let's just dive right into the steps required:

1. First, log into your GitHub account and fork this repo by clicking that little **fork** icon in the upper-right corner.  Just for the purpose of this tutorial, let's say your github account name is **inigomontoya** and you've just clicked the *fork* button, so now you have a github repo called https://github.com/inigomontoya/docker-images to work with. You are now ready to proceed to the next step.

1. Working from a checkout of this repo, first look for a container that looks similar to the one you want to create and then use it as your template.  In this example, we'll create a new Dockerfire for the popular [Ghost](https://hub.docker.com/r/library/ghost/) container:
    ```
    git clone https://github.com/inigomontoya/docker-images
    cd docker-images
    cp -r plex ghost
    cd ghost
    vi Dockerfile
    ```
1. Now we want to use the editor to change `FROM timhaak/plex:latest` to `FROM ghost:latest`, the `version` string to *0.11*, the web UI port to *2368*, and so on.  See the actual [Dockerfile](https://github.com/freenas/docker-images/blob/master/ghost/Dockerfile) to see the finished example.  The most important attributes will be the *org.freenas.port-mappings*, *org.freenas.volumes* and *org.freenas.settings* fields - these allow the FreeNAS Docker interfaces to expose the ports, volumes and variable settings for the container as appropriate.  If the container is able to update itself, other properties like *upgradable* should be set - again, the existing docker-images are the best working examples, which is why we suggest you start from one of them and then change just the "obvious" things until you get closer to an ideal Dockerfile.  Check it in with `git commit` and `git push` and then move to the next step!

1. If you would like the Docker container to have some documentation associated with it, always a good idea, which will also be displayed by the `readme` sub-command in the CLI (or per-container README button in the UI) then also include a README.md file with your Dockerfile.  It can contain any text in the standard markdown format.

1. Now you want to create a [Docker Hub](http://hub.docker.com) account, if you do not have one already, and sign into that Docker Hub account.  If you want create your collection in cooperation with other Docker Hub users, you may also wish to create an *Organization* as appropriate.  Either way, once you are signed in, look for the *Create* dropdown in the menu bar, just to the left of your Dockerhub username, which we will pretend is **callmeishmael** for the purpose of these examples.  Click that *Create* dropdown and select *Create Automated Build* from the menu.

1. Docker Hub will ask you to link your Github or Bitbucket accounts to the **callmeishmael** account.  Follow the prompts and enter your github credentials for **inigomontoya** as appropriate, and shortly you should have the two services linked together.  Now you can proceed with creating an Automated Build by clicking on the "Auto Build" icon for Github.

1. On the left, you will see your **inigomontoya** github username.  On the right, you will see the *docker-images* repository.  Click on it and you'll see another form labeled *Create Automated Build* with Repository Namesspace & Name fields.  Change the Name field to "ghost" and enter a short description, and **now click the _Click Here to Customize_ link** - this is very important!

1. Under the *Dockerfile Location* (on the branch labeled *master*) enter **/ghost** - this is the sub-directory of the **docker-images** directory that Docker Hub will look for the _Dockerfile_ in. Enter a Short Description for the container and click the Create button.

1. Now you should be on the Docker Hub page for your new **callmeishmael/ghost** container.  You're almost done!  Click on the Build Settings tab and you'll see your build settings for master + /ghost along with a button labeled "Trigger" - click that button.  Now you can click on the Build Details tab and see Docker Hub building your container.  This will take at least a few minutes.

1. Go to the FreeNAS 10 UI and click on the Docker icon.  Go to the **Collections** sub-view and click the green Create button.  You can now create a Collection with whatever name you like, but the Collection field has to be **callmeishmael** (or whatever your Docker Hub account is actually called of course).  Save it.

1. Go to Docker -> Containers -> Create in the FreeNAS 10 and select your Collection.  You should, after a short wait, see all the containers in your collection.  If you have also filled in some of the *org.freenas* properties in your Dockerfile, you should also see those pre-populated in the creation form.  You're done!
