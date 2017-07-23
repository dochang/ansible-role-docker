# NEWS

## 3.0

### Migration Guide

On [2017/03/02][1], Docker released a new official package `docker-ce`, which
makes `docker-engine` obsolete.

On apt-based system, if `docker-engine` is installed, the official install
script will uninstall it and install `docker-ce`.  But the script will NOT
remove the old source (`apt.dockerproject.org`) from the apt source list.
Also, the script will add the new source (`download.docker.com`) into the apt
source list.  You have to remove the old source manually.

Also, the script doesn't install distro packages [anymore][2] from
this [commit][3].

Because this role currently uses the official script as backend, we follow the
upstream behavior.  Please remove the old source manually if you migrate from
`docker-engine`.  Also, the Arch Linux installer will be removed for now.  It
will be added later.

[1]: https://blog.docker.com/2017/03/docker-enterprise-edition/
[2]: https://github.com/moby/moby/pull/23480
[3]: https://github.com/moby/moby/commit/29b98b6ee6b7cd9a89bd8471032850a04427d471
