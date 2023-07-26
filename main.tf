resource  "aws_ssm_parameter" "params" {
  count = length(var.params)
  name = var.params[count.index].name
  value = var.params[count.index].value
  type = var.params[count.index].type
}


variable "params" {
  default = [
    {name = "roboshop.dev.frontend.catalogue_url", value = "demo1", type = "string"}
    {name = "roboshop.dev.frontend.user_url", value = "demo1", type = "string"}
    {name = "roboshop.dev.frontend.cart_url", value = "demo1", type = "string"}
    {name = "roboshop.dev.frontend.payment_url", value = "demo1", type = "string"}
    {name = "roboshop.dev.frontend.shipping_url", value = "demo1", type = "string"}
  ]
}