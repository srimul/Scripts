variable "region" {
  default = "us-east-2"
}
variable "amiid" {
  default = "ami-0df2ea5740105c299"
  description = "Image Id you have created for Launch"
}
variable "min_count" {
  default = "1"
  description = "Minimum number of instance you want to trigger"
}
variable "desired_count" {
  default = "1"
  description = "Desired number of instance you want "
}
variable "max_count" {
  default = "1"
  description = "Maximum number of instance you want"
}
variable "hc_grace_period"{
  default = "180"
  description = " Health Check Grace period"
}
variable "cap_timeout"{
  default = "3m"
  description = "Capacity time out wait "
}
variable "subnet1"{
  default = "subnet-1999b963"
  description = "Subnet 1"
}
variable "subnet2"{
  default = "subnet-51f17a1d"
  description = "Subnet 2"
}
variable "subnet3"{
  default = "subnet-d97f95b2"
  description = "Subnet 3"
}
variable "instance_count" {
  default = "1"
}
variable "key_name" {
  default = "srimul"
  description = "the ssh key to be used for the EC2 instance"
}
variable "security_group" {
  default = "sg01FromTf"
  description = "Security groups for the instance"
}
