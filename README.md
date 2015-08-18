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

    - hosts: servers
      roles:
        - {
            role: amule,
            sudo: yes,
            amule_nick: Krilin
          }

License
-------

MIT
