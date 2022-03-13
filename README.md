# Installations

# AWS CLI 

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

unzip awscliv2.zip

sudo ./aws/install

# Provide key ID,Access Key,region name details 

[root@ip-172-31-92-211 ~]# /usr/local/bin/aws configure

AWS Access Key ID [None]:

AWS Secret Access Key [None]:

Default region name [None]:

Default output format [None]:

[root@ip-172-31-92-211 ~]#

# Install terraform (run below commands as root)

curl -O https://releases.hashicorp.com/terraform/0.12.16/terraform_0.12.16_linux_amd64.zip

unzip terraform_0.12.16_linux_amd64.zip -d /usr/bin/

yum install unzip -y

unzip terraform_0.12.16_linux_amd64.zip -d /usr/bin/

terraform -v

# commands

terraform init

terraform plan

terraform apply


# Ansible Installation Cmds

sudo yum update -y

sudo yum install python3 python3-pip -y

sudo yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm

sudo yum install  --enablerepo epel-playground  ansible

ansible --version

# In remote server in /etc/sudoers file add below line

jenkins ALL=(ALL)  NOPASSWD: ALL

# Create key and copy id_rsa.pub to remote server for passwordless and run below command to install jenkins

ssh-keygen

ansible-playbook -i hosts jenkins.yaml


# Docker Installtion Cmds

sudo yum update -y

sudo amazon-linux-extras install docker

sudo yum install docker

sudo service docker start

sudo usermod -a -G docker ec2-user

docker info

