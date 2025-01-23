resource "aws_instance" "my_first_instance" {
  ami           = var.ubuntu-ami
  instance_type = var.ubuntu-instance-type

  tags = {
    Name = "MyFirstInstance"
    Project = var.project}
}

resource "aws_key_pair" "deployer" {
  key_name   = var.key-name
  public_key = file("${path.module}/aws_ec2_keypair.pub") // this file should be in the same directory as the main.tf file
}

resource "aws_security_group" "network-security-group" {
  name        = var.network-security-group-name
  description = "Allow TLS inbound traffic"

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  # Not recommended to add "0.0.0.0/0" instead we need to be more specific with the IP ranges to allow connectivity from.
  tags = {
    Name = var.network-security-group-name
    Project = var.project
  }
}