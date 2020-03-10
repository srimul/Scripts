##############################################
# Function: zipmap,Transpose,values,sort,slice
##############################################
# Variables
##############################################
variable "list_1" {
  type = map

  default = {
	"a" = ["n1v1","n1v2"]
        "b"= ["n1v2","n2v2"]
  }
}
variable "map_1" {
  type = map
  default = {
    "k1" = "v1"
    "k2" = "v2"
  }
}
variable "list_2" {
  default = ["So", "Long", "and", "Thanks","abc","vidya"]
}
##############################################
# Outputs
##############################################

output "zipmap_list" {
  value = "${zipmap(list("k1","k2","k3"),list("v1","v2","v3"))}"
}
output "values_list" {
   value = "${values(var.map_1)}"
}
output "sort_list" {
   value = "${sort(var.list_2)}"
}
output "slice_list" {
   value = "${slice(var.list_2,1,5)}"
}
output "transpose_list" {
   value = "${transpose(var.list_1)}"
}
