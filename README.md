
Command in one line: 

ssh -A -t appuser@35.210.245.165 ssh 10.132.0.7

Alias way: in ~/.ssh/config paste:

Host bastion
User appuser
HostName 35.210.245.165
ForwardAgent yes
IdentityFile ~/.ssh/appuser

Host someinternalhost
User appuser
HostName 10.132.0.7
IdentityFile ~/.ssh/appuser
ProxyJump bastion

Pritunl settings:

bastion_IP = 35.210.245.165
someinternalhost_IP = 10.132.0.7

sudo certbot certonly \
  --standalone \
  --non-interactive \
  --agree-tos \
  --email test@mail.com \
  --domains bastion_ip.sslip.io \
  --pre-hook 'sudo systemctl stop pritunl.service' \
  --post-hook 'sudo systemctl start pritunl.service'

