aMule Ansible Role
==================

[![Build status](https://img.shields.io/travis/elboletaire/ansible-amule.svg?style=flat-square)](https://travis-ci.org/elboletaire/ansible-amule)
[![Ansible galaxy](https://img.shields.io/ansible/role/5517.svg?style=flat-square)](https://galaxy.ansible.com/list#/roles/5517)

Ansible role for installing aMule for the `{{ ansible_user_id }}`.

Requirements
------------

Debian based system (remote machine).

Installing
----------

You can easily install this role using `ansible-galaxy`:

```bash
ansible-galaxy install elboletaire.amule -p roles
```

Role Variables
--------------

There are no mandatory variables for configuring aMule. BTW, it is recommended
that you change the password to increase the security (default one is very weak).

| Variable                             | Default                                   |
| ------------------------------------ | ----------------------------------------- |
| `amule_nick`                         | amule's default                           |
| `amule_password`                     | `1234`                                    |
| `amule_web_enabled`                  | `true`                                    |
| `amule_web_port`                     | `4711`                                    |
| `amule_ec_port`                      | `4712`                                    |
| `amule_max_upload`                   | `500`                                     |
| `amule_max_download`                 | `19375`                                   |
| `amule_port`                         | `4662`                                    |
| `amule_udp_enabled`                  | `true`                                    |
| `amule_udp_port`                     | `4672`                                    |
| `amule_temp_dir`                     | `/home/{{ ansible_user_id }}/.aMule/Temp` |
| `amule_incoming_dir`                 | `/home/{{ ansible_user_id }}/Incoming`    |


Example Playbook
----------------

```yaml
- hosts: all
roles:
  - role: amule
    sudo: yes
    amule_nick: Krilin
```

License
-------

    The MIT License (MIT)

    Copyright (c) 2015 Oscar Casajuana <elboletaire at underave dot net>

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in
    all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
    THE SOFTWARE.
