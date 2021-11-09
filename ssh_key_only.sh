#!/bin/bash


echo "Copying key to ${2} for user ${1}"
ssh-copy-id "${1}@${2}"
echo 'Done'
echo '    '
echo 'You may be prompt for your sudo password in worder to disable PasswordAuthentication'
ssh "${1}@${2}" 'sudo sed -i "/^[^#]*PasswordAuthentication[[:space:]]yes/c\PasswordAuthentication no" /etc/ssh/sshd_config'
echo "Done"
echo '    '
echo "Restartign sshd"
ssh "${1}@${2}" 'sudo service sshd restart'
echo "Done"
echo '    '
ssh "${1}@${2}" 'uptime'
echo "Congrats, you can ssh only with the keys setup for your user in this computer"
echo '    '

