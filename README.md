Ansible Role: Graphite
======================

This role installs and configures Graphite.

Requirements
------------

This role requires a mysql server for Graphite's data store, as well as Apache.

Role Variables
--------------
`defaults/main.yml`

| Name           | Default Value | Description                        |
| -------------- | ------------- | -----------------------------------|
| graphite_log_rendering_performance | no | logs rendering performance |
| graphite_log_cache_performance | no   | logs cache performance |
| graphite_log_metric_access| no       | log metric access
| graphite_timezone |  UTC   | timezone for graphite

`vars/[Debian, RedHat].yml`

| Name           | Description      |
|----------------|------------------|
| apache_service | name of apache service |
| carbon_local_data_dir | carbon's data dir |
| packages       | package dependencies for graphite |
| carbon_service | name of carbon service |
| carbon_storage_dir | carbon storage directory |
| carbon_user | the owner of the carbon process|
| graphite_conf | graphite configuration directory |
| graphite_content_dir | where graphite static content is stored |
| graphite_index_file | path to graphtie's index file |
| graphite_log_dir | path to graphite's logs |
| graphite_python | path to graphite's python library|
| graphite_storage_dir |  path to graphite's storage dir |
| graphite_user | username of account running graphite |
| graphite_var | path to graphite's var directory |
| graphite_whishper_dir| path to graphite's whisper dir |



Dependencies
------------

None

Example Playbook
----------------

The following playbook ought to be sufficient to install Graphite:

    - hosts: graphite
      roles:
         - geerlingguy.mysql
         - geerlingguy.apache
         - getvalkyrie.graphite

