# Using aws terraform provider
provider "aws" {
   region = "us-east-2"
}


# Create a VPC and display its Id

variable "vpc_cidrblk" {}
variable "env" {}

resource "aws_vpc" "myvpc" {
  cidr_block = "${var.vpc_cidrblk}"
 
  tags = {
    Name = "vpc-env-${var.env}"
  }
}

output "VPC_id" {
  value = "${aws_vpc.myvpc.id}"
}

