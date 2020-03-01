provider "aws" {

   region = "us-east-2"

}
output "name"{

    value = "${var.name}"

}
