provider "aws" {
   region = "us-east-2"
}

terraform {
  backend "s3" {
    bucket = "clisrimul"
    key    = "moduleASG/test/terraform.tfstate"
    region = "us-east-2"
  }
}
## This is a way to return values from a modules
#output "asgL_config" {
#  value = "${aws_launch_configuration.my_asc_01.name}"  
#}

module  "Dev-ASG-01" {
  source = "../../modules/asg"
  env    = "${var.env}"
  max_count = "${var.max_count}"
  min_count = "${var.min_count}"
  desired_count = "${var.desired_count}"
  hc_grace_period = "${var.hc_grace_period}"
  asgLC = "${var.asgLC}"
  #launch_configuration = "${aws_launch_configuration.my_asc_01.name}"
  cap_timeout = "${var.cap_timeout}"
  subnet1 = "${var.subnet1}"
  subnet2 = "${var.subnet2}"
}

