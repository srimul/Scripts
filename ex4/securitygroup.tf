# To Create a Security group

provider "aws" {
  region = "${var.region}"

}

resource "aws_security_group" "allow_ssh" {
  name = "sg01FromTf"

  description = "Allow ssh inbound traffic"

  ingress {

      from_port = 22

      to_port = 22

      protocol = "tcp"

      cidr_blocks = ["0.0.0.0/0"]

  }
}

output "SecurityGroupId" {

    value = "${aws_security_group.allow_ssh.id}"

}
