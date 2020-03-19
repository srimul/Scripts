variable "region" {
  default = "us-east-2"
}
variable "env" {
  type = "string"
  description ="Value of this variable is supplied in modules calling"
}
variable "asgLC" {
  type = "string"
  description ="Value of this variable is supplied in modules calling"
}
variable "min_count" {
  description = "Minimum number of instance you want to trigger"
}

variable "desired_count" {
  description = "Desired number of instance you want "
}

variable "max_count" {
  description = "Maximum number of instance you want"
}
variable "hc_grace_period"{
  description = " Health Check Grace period"
}
variable "cap_timeout"{
  description = "Capacity time out wait "
}
variable "subnet1"{
  description = "Subnet 1"
}
variable "subnet2"{
description = "Subnet 2"
}
