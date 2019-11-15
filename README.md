
Command in one line: 

ssh -A -t appuser@35.210.245.165 ssh 10.132.0.5

Alias way: in ~/.ssh/config paste:

Host bastion
User appuser
HostName 35.210.245.165
#ForwardAgent yes
IdentityFile ~/.ssh/appuser

Host someinternalhost
User appuser
HostName 10.132.0.5
IdentityFile ~/.ssh/appuser
ProxyJump bastion
