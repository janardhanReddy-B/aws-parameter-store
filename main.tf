resource  "aws_ssm_parameter" "params" {
  count = length(var.params)
  name = var.params[count.index].name
  value = var.params[count.index].value
  type = var.params[count.index].type
}


variable "params" {
  default = [
    {name = "demo1", value = "demo1", type = "string"}
  ]
}