# Docker container build recipes for /r/freenas on Dockerhub

These are the docker image *source files* for everything one sees in the default *freenas* collection on FreeNAS 10.  They are essentially no different than any other Dockerfile you might see on github or dockerhub, though the FreeNAS project has added its own metadata under the *org.freenas* namespace to make guided configuration in its own Docker interface(s) possible (tab-completed values in the CLI, pre-populated forms in the GUI). This metadata is not strictly necessary for using a Docker container with FreeNAS 10, it simply makes a "fill in the blanks" configuration mode possible.

# Making your own Docker container(s) for FreeNAS
Perhaps you have a favorite Docker container that you think would be great for FreeNAS, in which case the FreeNAS 10 project happily accepts pull requests against this repo, but how might you test it first? How, for that matter, could you and your friends create your own *collections* of Docker containers for your own use?  We're glad you asked! The process is actually quite simple, so let's just dive right into the steps required:

1. First, log into your gibhub account and fork this repo by clicking that little **fork** icon in the upper-right corner.  Just for the purpose of this tutorial, let's say your github account name is **inigomontoya** and you've just clicked the *fork* button, so now you have a github repo called https://github.com/inigomontoya/docker-images to work with. You are now ready to proceed to the next step.

1. Working from a checkout of this repo, first look for a container that looks similar to the one you want to create and then use it as your template.  In this example, we'll create a new Dockerfire for the popular [Ghost](https://hub.docker.com/r/library/ghost/) container:
```
git clone https://github.com/inigomontoya/docker-images
cd docker-images
cp -r plex ghost
cd ghost
vi Dockerfile
```
1. Now we want to use the editor to change `FROM timhaak/plex:latest` to `FROM ghost:latest`, the `version` string to *0.11*, the web UI port to *2368*, and so on.  See the actual [Dockerfile](https://github.com/freenas/docker-images/blob/master/ghost/Dockerfile) to see the finished example.  The most important attributes will be the *org.freenas.port-mappings*, *org.freenas.volumes* and *org.freenas.settings* fields - these allow the FreeNAS Docker interfaces to expose the ports, volumes and variable settings for the container as appropriate.  If the container is able to update itself, other properties like *upgradable* should be set - again, the existing docker-images are the best working examples, which is why we suggest you start from one of them and then change just the "obvious" things until you get closer to an ideal Dockerfile.  Check it in with `git commit` and `git push` and then move to the next step!

1. Now you want to create a [Docker Hub](http://hub.docker.com) account, if you do not have one already, and sign into that Docker Hub account.  If you want create your collection in cooperation with other Docker Hub users, you may also wish to create an *Organization* as appropriate.  Either way, once you are signed in, look for the *Create* dropdown in the menu bar, just to the left of your Dockerhub username, which will assume is **callmeishmael** for the purpose of these examples.  Click that *Create* dropdown and select *Create Automated Build* from the menu.

1. Docker Hub will ask you to link your Github or Bitbucket accounts to the **callmeishmael** account.  Follow the prompts and enter your github credentials for **inigomontoya** as appropriate, and shortly you should have the two services linked together.  Now you can proceed with creating an Automated Build by clicking on the "Auto Build" icon for Github.

1. On the left, you will see your **inigomontoya** github username.  On the right, you will see the *docker-images* repository.  Click on it and you'll see another form labeled *Create Automated Build* with Repository Namesspace & Name fields.  Change the Name field to "ghost" and enter a short description, and **now click the _Click Here to Customize_ link** - this is very important!

1. Under the *Dockerfile Location* (on the branch labeled *master*) enter **/ghost** - this is the sub-directory of the **docker-images** directory that Docker Hub will look for the _Dockerfile_ in. Enter a Short Description for the container and click the Create button.

1. Now you should be on the Docker Hub page for your new **callmeishmael/ghost** container.  You're almost done!  Click on the Build Settings tab and you'll see your build settings for master + /ghost along with a button labeled "Trigger" - click that button.  Now you can click on the Build Details tab and see Docker Hub building your container.  This will take at least a few minutes.

1. Go to the FreeNAS 10 UI and click on the Docker icon.  Go to the **Collections** sub-view and click the green Create button.  You can now create a Collection with whatever name you like, but the Collection field has to be **callmeishmael** (or whatever your Docker Hub account is actually called of course).  Save it.

1. Go to Docker -> Containers -> Create in the FreeNAS 10 and select your Collection.  You should, after a short wait, see all the containers in your collection.  If you have also filled in some of the *org.freenas* properties in your Dockerfile, you should also see those pre-populated in the creation form.  You're done!
