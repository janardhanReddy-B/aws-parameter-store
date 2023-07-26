resource  "aws_ssm_parameter" "params" {
  count = length(var.params)
  name = var.params[count.index].name
  value = var.params[count.index].value
  type = var.params[count.index].type
}


variable "params" {
  default = [
    { name = "roboshop.dev.frontend.catalogue_url", value = "http://catalogue-dev.devopsbjr.online:8080", type = "string" },
    { name = "roboshop.dev.frontend.user_url", value = "http://user-dev.devopsbjr.online:8080", type = "string" },
    { name = "roboshop.dev.frontend.cart_url", value = "http://cart-dev.devopsbjr.online:8080", type = "string" },
    { name = "roboshop.dev.frontend.payment_url", value = "http://payment-dev.devopsbjr.online:8080", type = "string" },
    { name = "roboshop.dev.frontend.shipping_url", value = "http://shipping-dev.devopsbjr.online:8080", type = "string" },
  ]
}