#Display the details of existing instances using data source
variable "list_1" {
  default = ["i-0172d29af22d784d8", "i-05b5a59e0d006f67d", "i-0b041a03c7954a033" ]
}
provider "aws" {
  region = "us-east-2"
}

data "aws_instance" "sriservers"{
instance_id = "${var.list_1[0]}"
}
output "EC2_Instance_state" {
 value = "${data.aws_instance.sriservers.instance_state}"
}
output "EC2_Instance_ids" {
  value = "${data.aws_instance.sriservers.id}"
}


