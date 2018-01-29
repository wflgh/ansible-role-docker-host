docker-host
=========

Installs Docker

Requirements
------------

CentOS:
* Ensure the CentOS Extras repository is enabled

Role Variables
--------------

#### defaults/main.yml

| variable | default | description |
| -------- | ------- | ----------- |
| docker_edition | ce | docker edition: ce/ee |
| docker_package_name | docker-{{ docker_edition }} | name of the docker package to install |
| docker_prereq_yum_packages | device-mapper-persistent-data<br/>lvm2 | sequence of prequisite package names |
| docker_stable_yum_repository_baseurl | https://download.docker.com/linux/centos/7/$basearch/stable | URL for docker stable yum repository |

Dependencies
------------


Example Playbook
----------------

    - hosts: servers
      roles:
         - ansible-role-docker-host


Tests
-----

Tests are available via ansible-kitchen


Author Information
------------------

https://github.com/wflgh
