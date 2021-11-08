# vps-setup
A set of bash scripts to help you setup a brand new vps. Each script is super small and only doing the basic. Read it before running.

## Copy ssh keys to the vps and disable Password authentication

`./ssh_key_only.sh user vps_ip`

## Install unattended-upgrade (to upgrade automatically from Debian-Security)

(It may work on Debian based distros as well)

`./debian_security.sh user vps_ip`
