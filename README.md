Docker
======

[![Ansible Galaxy](https://img.shields.io/badge/galaxy-dochang.docker-blue.svg)](https://galaxy.ansible.com/list#/roles/1816)

An ansible role to install docker on several GNU/Linux distributions.

Requirements
------------

None

Role Variables
--------------

  - `docker_users`

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
