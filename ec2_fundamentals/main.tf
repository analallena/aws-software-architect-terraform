resource "aws_instance" "my_first_instance" {
  ami           = var.ubuntu-ami
  instance_type = var.ubuntu-instance-type

  tags = var.tags
}