# Installations

# Steps to Install the AWS CLI 

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

unzip awscliv2.zip

sudo ./aws/install

# Provide your Access key ID,Secret Access Key and Region name details. 

[root@ansible-terraform ~]# /usr/local/bin/aws configure

AWS Access Key ID [None]:

AWS Secret Access Key [None]:

Default region name [None]:

Default output format [None]:

# steps to Install the terraform (run the below cmds as root user).

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

# Add the below line in the remote server in /etc/sudoers to make password less connection.

jenkins ALL=(ALL)  NOPASSWD: ALL

# Create private and public keys and copy the id_rsa.pub key to remote server for passwordless and run the below cmds to install jenkins.

ssh-keygen

ansible-playbook -i hosts jenkins.yaml


# Docker Installtion Cmds

sudo yum update -y

sudo amazon-linux-extras install docker

sudo yum install docker

sudo service docker start

sudo usermod -a -G docker ec2-user

docker info

