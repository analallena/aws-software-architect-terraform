key-name                    = "deployer-key"
network-security-group-name = "nsg-inbound"
ubuntu-ami                  = "ami-043a5a82b6cf98947" # You can find this info in AMI Catalog on AWS management console for the specific image you want to create
ubuntu-instance-type        = "t2.micro"

tags = [
    {
        Name = "aws_software_architect"
    }
]