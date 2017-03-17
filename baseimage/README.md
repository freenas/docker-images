# Baseimage Linux

This is a simple Linux "baseimage" container. It is an Interactive container, meaning
that the Console UI / CLI will talk directly to the command specified (and
can be connected / disconnected repeatedly without killing the container).
The command argument also MUST be specified - this is generally /bin/sh or
some other useful command in the container.  The baseimage container is also
specifically designed for Docker and is intended as a base image for other
containers to inherit from.
