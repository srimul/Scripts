provider "aws" {

   region = "us-east-2"

}

resource "aws_instance" "tfServers" {
 # ami = "ami-0fc20dd1da406780b"
  ami = "ami-0e38b48473ea57778"
  #count = "2"
  instance_type = "t2.micro"
  tags = {
    Name = "terraformInst01"
  }
  key_name = "srimul"
}
