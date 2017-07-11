Docker
======

[![Build Status](https://travis-ci.org/dochang/ansible-role-docker.svg?branch=master)](https://travis-ci.org/dochang/ansible-role-docker)
[![Ansible Galaxy](https://img.shields.io/badge/galaxy-dochang.docker-blue.svg)](https://galaxy.ansible.com/dochang/docker/)
[![Average time to resolve an issue](http://isitmaintained.com/badge/resolution/dochang/ansible-role-docker.svg)](http://isitmaintained.com/project/dochang/ansible-role-docker "Average time to resolve an issue")
[![Percentage of issues still open](http://isitmaintained.com/badge/open/dochang/ansible-role-docker.svg)](http://isitmaintained.com/project/dochang/ansible-role-docker "Percentage of issues still open")

An ansible role to install docker on several GNU/Linux distributions.

Requirements
------------

None

Role Variables
--------------

  - `docker_users`
  - `docker_apt_source_uri`
  - `docker_yum_source_uri`
  - `docker_dockerpy_version` (Default: the latest version)
  - `docker_pip_executable` (Default: auto detect by Ansible)

Dependencies
------------

None

Example Playbook
----------------

    - hosts: servers
      roles:
        - { role: dochang.docker }

License
-------

MIT

Author Information
------------------

Desmond O. Chang <dochang@gmail.com>
