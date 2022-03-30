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

sudo amazon-linux-extras install ansible2


# Create private and public keys and copy the id_rsa.pub key to remote server for passwordless and run the below cmds to install jenkins.

ssh-keygen

ansible -i hosts all -m ping

ansible-playbook -i hosts jenkins.yaml


# Install git $ docker

sudo yum install git

sudo amazon-linux-extras install docker

sudo systemctl start docker

sudo chmod 777 /var/run/docker.sock

sudo usermod -a -G docker ec2-user

docker info

