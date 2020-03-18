provider "aws" {
   region = "us-east-2"
}

terraform {
  backend "s3" {
    bucket = "clisrimul"
    key    = "project2/terraform.tfstate"
    region = "us-east-2"
  }
}

resource "aws_launch_configuration" "my_asc_01" {
  name = "my-asc-1"
  image_id = "${var.amiid}"
  security_groups = ["sg-014bc5c705b392f78"]
  instance_type = "t2.micro"
  key_name = "${var.key_name}" 
}

resource "aws_autoscaling_group" "my_asg_01" {
  name     = "my_asg_tf_01"
  max_size = "${var.max_count}"
  min_size = "${var.min_count}"
  desired_capacity ="${var.desired_count}"
  health_check_grace_period = "${var.hc_grace_period}"
  launch_configuration = "${aws_launch_configuration.my_asc_01.name}"
  wait_for_capacity_timeout = "${var.cap_timeout}"
  vpc_zone_identifier       = ["${var.subnet1}", "${var.subnet3}"]
}

output "Auto_Scaling_Group_ID" {
  value = "${aws_autoscaling_group.my_asg_01.id}"
}

output "Auto_Scaling_Launch_Config_ID" {
  value = "${aws_launch_configuration.my_asc_01.id}"
}

output "Auto_Scaling_Launch_Config_ARN" {
  value = "${aws_launch_configuration.my_asc_01.arn}"
}

