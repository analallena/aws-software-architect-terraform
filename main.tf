terraform {
  backend "s3" {
    bucket = "tf-state-aws-architect-infra"
    key    = "terraform-instruments-project"
    region = "eu-west-1"
  }
}

provider "aws" {
  region = "eu-west-1"
}

module "ec2_fundamentals" {
  source                      = "./modules/ec2_fundamentals"
  key-name                    = var.key-name
  network-security-group-name = var.network-security-group-name
  ubuntu-ami                  = var.ubuntu-ami
  ubuntu-instance-type        = var.ubuntu-instance-type
  project                     = var.project
}