# Using aws terraform provider
provider "aws" {
   region = "us-east-2"
}

terraform {
  backend "s3" {
    bucket = "clisrimul"
    key    = "VPCMod/dev/terraform.tfstate"
    region = "us-east-2"
  }
}

# Create a VPC usgin vpcModule and display its Id
module "dev-vpc" {
    source = "../../module"
    vpc_cidrblk = "${var.vpc_cidrblk}"
    env = "${var.env}"
}

#resource "aws_vpc" "myvpc1" {
#  cidr_block = "${var.vpc_cidrblk}"
 
#  tags = {
#    Name = "vpc-env-${var.env}"
#  }
#}

#output "VPC id" {
#  value = "${aws_vpc.myvpc.id}"
#}

