provider "aws" {
  region = var.aws_region
}


#Create security group with firewall rules
resource "aws_security_group" "security_group_jenkins_port" {
  name        = "security_group_jenkins_port"
  description = "security group for jenkins"

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

 ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

 # outbound from jenkis server
  egress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags= {
    Name = "security_group_jenkins_port"
  }
}

resource "aws_instance" "myFirstInstance" {
  ami           = "ami-0d718c3d715cec4a7"
  key_name = var.key_name
  instance_type = var.instance_type
  security_groups= [ "security_group_jenkins_port"]
  tags= {
    Name = "jenkins_instance"
  }
}
