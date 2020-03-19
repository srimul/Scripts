variable "region" {
  default = "us-east-2"
}
variable "env" {
  type = "string"
  default = "dev"
  description ="Value of this variable is supplied in modules calling"
}
variable "asgLC" {
  type = "string"
  default = "ASTWebserver"
  description ="Value of this variable is supplied in modules calling"
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
