# Provide need nto be specifed here. But still metioned here for 
# unit testing purpose.
provider "aws" {
   region = "us-east-2"
}

## Belwo output statement is to expose ASG Launch config through module
## This is a way to return values from a modules
#output "asgL_config" {
#  value = "${aws_launch_configuration.my_asc_01.name}"  
#}

resource "aws_autoscaling_group" "my_asg_01" {
  name                 = "my_asf_${var.env}"
  max_size = "${var.max_count}"
  min_size = "${var.min_count}"
  desired_capacity ="${var.desired_count}"
  health_check_grace_period = "${var.hc_grace_period}"
  launch_configuration = "${var.asgLC}"
  wait_for_capacity_timeout = "${var.cap_timeout}"
  vpc_zone_identifier       = ["${var.subnet1}", "${var.subnet2}"]
}

