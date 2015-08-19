aMule Ansible Role
==================

Ansible role for installing aMule

Requirements
------------

Ansible >= 1.9.0 (control machine) and a Debian based system (remote machine).

Role Variables
--------------

```yaml
# defaults file for amule
amule_nick: yourNickname
amule_web_enabled: true # Whether enable the web interface or not
amule_web_port: 4711 # Web Interface Port
amule_ec_port: 4712 # External Connection Port
amule_passwd: yourPassword # Password for EC and Web
amule_max_upload: 500
amule_max_download: 19375
amule_port: 4662
amule_udp_enabled: true
amule_udp_port: 4672
amule_temp_dir: /home/{{ ansible_user_id }}/.aMule/Temp
amule_incoming_dir: /home/{{ ansible_user_id }}/Incoming
```

Example Playbook
----------------

```yaml
  - hosts: servers
    roles:
      - {
          role: amule,
          sudo: yes,
          amule_nick: Krilin
        }
```

License
-------

    The MIT License (MIT)

    Copyright (c) 2015 Òscar Casajuana <elboletaire at underave dot net>

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
