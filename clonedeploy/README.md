[appurl]: https://clonedeploy.org/
[![clonedeploy](https://clonedeploy.org/wp-content/uploads/2016/05/wds.png)][appurl]

# Official Docker Container for CloneDeploy

This image was created specifically for use with FreeNAS Corral, but should work with any environment that supports macvlan networking.

## Usage

Before creating the container, be sure that your Docker environment supports macvlan networking.  FreeNAS Corral has this configured by default.  Port forwarding / NAT is not an ideal fit for CloneDeploy due to DHCP/Proxy requests, Multicasting, etc, and the macvlan enables CloneDeploy to be accessed directly via a static ip.  It is also very important to have your storage setup properly before you start uploading images, otherwise you will most likely use a lot of storage somewhere you were not supposed to.

## Data Persistence
##### Application Folder: 
This is where the CloneDeploy web application resides as well as some config files and logs.
```
/path/to/application:/var/www/html
```

##### Database: 
The CloneDeploy database is stored here.  A separate MySQL container is not currently supported.
```
/path/to/dbdata:/var/lib/mysql
```

##### TFTP: 
The CloneDeploy Tftp folder.  Boot Menu's, Boot Images, and Kernels are stored here.
```
/path/to/tftp:/tftpboot
```

##### Images: 
The CloneDeploy Image folder.  This is where the images your capture from the client computer are stored.
```
/path/to/images:/cd_dp
```

## Variables
##### RW_SMB_PASS
Everytime the container is started, the SMB is share is recreated.  The read/write password is set here.  If this value is not filled in, the default value of rwpass is used.  If this value is changed after the intial setup, you will need to update your distribution point.
##### RO_SMB_PASS
Everytime the container is started, the SMB is share is recreated.  The read only password is set here.  If this value is not filled in, the default value of ropass is used.  If this value is changed after the intial setup, you will need to update your distribution point.
##### MYSQL_ROOT_PASS
If database directory is empty the root password will be initialized with this value.  If it is empty, a random password is generated.  This value has no affect if the database directory is not empty.

For more detailed information specific to FreeNAS Corral [check here](http://clonedeploy.org/docs/install-on-freenas-corral/)

For more detailed information specific to Docker [check here](http://clonedeploy.org/docs/install-with-docker/)
