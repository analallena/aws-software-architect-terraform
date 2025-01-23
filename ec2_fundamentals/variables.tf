variable "key-name" {
}

variable "network-security-group-name" {
}

variable "ubuntu-ami" {
}

variable "ubuntu-instance-type" {
}

variable "tags"{
    type = map(string)
    default = {
        Name = "aws_software_architect"
    }
}