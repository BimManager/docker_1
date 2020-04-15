#!/bin/sh

#sed -i 's/gitlab.example.com/172.17.0.2/' /etc/gitlab/gitlab.rb
echo "172.17.0.2	gitlab.example.com" >> /etc/hosts
sed -i '7d' /etc/hosts
/opt/gitlab/embedded/bin/runsvdir-start &
gitlab-ctl reconfigure
tail -f /dev/null