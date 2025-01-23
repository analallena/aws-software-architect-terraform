terraform {
  backend "s3" {
    bucket                  = "tf-state-aws-architect-infra"
    key                     = "terraform-instruments-project"
    region                  = "eu-west-1"
  }
}

provider "aws" {
  region = "eu-west-1"
}