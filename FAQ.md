# How to force to use pip2 to install docker-py?

Some Linux distributions link `pip` to `pip3`.  If your Ansible does not
support Python 3, you have to use pip2 by setting `docker_pip_executable` to
`pip2`:

```
roles:
  - role: dochang.docker
    docker_pip_executable: pip2
```
