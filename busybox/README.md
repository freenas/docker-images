# Busybox Linux

This is a simple Busybox Linux container. It is an Interactive container, meaning
that the Console UI / CLI will talk directly to the command specified (and
can be connected / disconnected repeatedly without killing the container).
The command argument also MUST be specified - this is generally /bin/sh or
some other useful command in the container.  Busybox is known for being a
particularly small and minimalist container, containing a lot of functionality
in a small amount of space.
