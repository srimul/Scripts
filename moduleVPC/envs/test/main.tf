# Using aws terraform provider
provider "aws" {
   region = "us-east-2"
}

terraform {
  backend "s3" {
    bucket = "clisrimul"
    key    = "VPCMod/test/terraform.tfstate"
    region = "us-east-2"
  }
}
# Create a VPC usgin vpcModule and display its Id
module "test-vpc" {
    source = "../../module"
    vpc_cidrblk = "${var.vpc_cidrblk}"
    env = "${var.env}"
}

output "VPC_created_is" {
     value = "${module.test-vpc.VPC_id}"
}

