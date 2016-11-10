yum install -y https://rdoproject.org/repos/rdo-release.rpm
yum install -y openstack-packstack
packstack --gen-answer-file=~/answers.cfg
# Edit the configuration ip of nodes
grep PW answers.cfg | grep -v PLACEHOLDER
# Change password for all

packstack --answer-file=answers.cfg


