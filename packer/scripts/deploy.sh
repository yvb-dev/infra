#!/bin/bash
cd

git clone -b monolith https://github.com/express42/reddit.git

cd reddit && bundle install

#puma -d

mv /tmp/puma.service /etc/systemd/system/puma.service

systemctl daemon-reload

systemctl start puma

systemctl enable puma
