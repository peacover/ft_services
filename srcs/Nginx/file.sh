rc-status
touch /run/openrc/softlevel
rc-service nginx restart
# apk add openssh-keygen

echo -e "peacover\npeacover\n" > password
adduser peacover < password
# ssh-keygen -A

rm password
rc-service sshd restart

tail -F /dev/null