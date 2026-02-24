resource "aws_key_pair"  "my_key_pair" {
  key_name   = "${var.env}-infra-app-key"
  public_key = file("terra-key-ec2.pub")
  tags = {
    Environment = var.env
  }
  
}

resource "aws_default_vpc" "default_vpc" {

  
}

resource "aws_security_group" "my_security_group" {
  name        = "${var.env}-infra-app-sg"
  description = "Allow SSH and HTTP traffic"
  vpc_id      = aws_default_vpc.default_vpc.id

 

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "${var.env}-infra-app-sg"
    
  }
}

resource "aws_instance" "my_ec2_instance" {
    count = var.instance_count


key_name = aws_key_pair.my_key_pair.key_name

security_groups = [aws_security_group.my_security_group.name]

instance_type = var.instance_type

ami = var.ami_id

root_block_device {
  volume_size = var.env == "prd"?20 :10
  volume_type = "gp3"
}

tags = {
  Name = "${var.env}-infra-app-instance"
  Environment = var.env
}

}