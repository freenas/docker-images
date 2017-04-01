# Jenkins README

This utilizes the official Jenkins container.

Learn more about Jenkins at http://jenkins.io

## User
Jenkins user is UID `1000` and GID `1000`
This shouldn't be difficult for you to map to a local jenkins user for
ownership of files.

## Volume /var/jenkins_home
`/var/jenkins_home` is where all of your configuration is stored.
I recommend you make this a mount to a local volume you can store
your configuration.
