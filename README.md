Docker
======

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
