# Minimimum applications for docker
This repo contains just minimum applications that either:
* Runs and exits successfully (exit code 0)
* Prints "Goodbye!" and exits successfully (exit code 0)

# Why ?

There are few edge use cases that require to have simple a docker image:

* Since docker-compose version 3 it is not possible to define a network without a service.
* You want to [override some services](https://bitbucket.org/rw_grim/docker-noop/src/default/).