<details><summary> HOMEWORK #5 cloud-bastion </summary>
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
</details>

<details><summary> HOMEWORK #6 cloud-testapp </summary>

testapp_IP = 35.202.63.243
testapp_port = 9292

gcloud compute instances create reddit-app --boot-disk-size=10GB --image-family ubuntu-1604-lts --image-project=ubuntu-os-cloud --machine-type=g1-small  --tags puma-server  --restart-on-failure --metadata startup-script-url=gs://yvb583-otus-startupscript/startup_all.sh

gcloud compute firewall-rules create default-puma-server --action allow --target-tags puma-server --rules tcp:9292 --enable-logging

</details>

