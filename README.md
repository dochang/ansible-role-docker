Docker
======

[![Build Status](https://travis-ci.org/dochang/ansible-role-docker.svg?branch=master)](https://travis-ci.org/dochang/ansible-role-docker)
[![Ansible Galaxy](https://img.shields.io/badge/galaxy-dochang.docker-blue.svg)](https://galaxy.ansible.com/dochang/docker/)
[![Issue Stats](http://issuestats.com/github/dochang/ansible-role-docker/badge/pr)](http://www.issuestats.com/github/dochang/ansible-role-docker)
[![Issue Stats](http://issuestats.com/github/dochang/ansible-role-docker/badge/issue)](http://www.issuestats.com/github/dochang/ansible-role-docker)

An ansible role to install docker on several GNU/Linux distributions.

Requirements
------------

None

Role Variables
--------------

  - `docker_users`
  - `docker_apt_source_uri`
  - `docker_yum_source_uri`

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
