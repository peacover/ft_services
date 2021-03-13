rc-status
touch /run/openrc/softlevel

echo -e "user\nuser\n" > password
adduser user < password
rm password

rc-service vsftpd start

# bin/bash
tail -F /dev/null
