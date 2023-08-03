resource  "aws_ssm_parameter" "params" {
  count = length(var.params)
  name = var.params[count.index].name
  type = var.params[count.index].type
  value = var.params[count.index].value
  overwrite = true
  key_id    = "2eeb6c9c-36f5-4e89-857c-680ad8eedf3e"

}

variable "params" {
  default = [
    { name = "roboshop.dev.frontend.catalogue_url", value = "http://catalogue-dev.devopsbjr.online:8080/", type = "String" },
    { name = "roboshop.dev.frontend.user_url", value = "http://user-dev.devopsbjr.online:8080/", type = "String" },
    { name = "roboshop.dev.frontend.cart_url", value = "http://cart-dev.devopsbjr.online:8080/", type = "String" },
    { name = "roboshop.dev.frontend.payment_url", value = "http://payment-dev.devopsbjr.online:8080/", type = "String" },
    { name = "roboshop.dev.frontend.shipping_url", value = "http://shipping-dev.devopsbjr.online:8080/", type = "String" },
    { name = "roboshop.dev.cart.redis_host", value = "redis-dev.devopsbjr.online", type = "String" },
    { name = "roboshop.dev.cart.catalogue_host", value = "catalogue-dev.devopsbjr.online", type = "String" },
    { name = "roboshop.dev.cart.catalogue_port", value = "8080", type = "String" },
    { name = "roboshop.dev.catalogue.mongo", value = "true", type = "String" },
    { name = "roboshop.dev.catalogue.mongo_url", value = "mongodb://mongodb-dev.devopsbjr.online:27017/catalogue", type = "String" },
    { name = "roboshop.dev.payment.cart_host", value = "cart-dev.devopsbjr.online", type = "String" },
    { name = "roboshop.dev.payment.cart_port", value = "8080", type = "String" },
    { name = "roboshop.dev.payment.user_host", value = "user-dev.devopsbjr.online", type = "String" },
    { name = "roboshop.dev.payment.user_port", value = "8080", type = "String" },
    { name = "roboshop.dev.payment.amqp_host", value = "rabbitmq-dev.devopsbjr.online", type = "String" },
    { name = "roboshop.dev.payment.amqp_user", value = "roboshop", type = "String" },
    { name = "roboshop.dev.shipping.cart_endpoint", value = "cart-dev.devopsbjr.online:8080", type = "String" },
    { name = "roboshop.dev.shipping.db_host", value = "mysql-dev.devopsbjr.online", type = "String" },
    { name = "roboshop.dev.user.mongo", value = "true", type = "String" },
    { name = "roboshop.dev.user.redis_host", value = "redis-dev.devopsbjr.online", type = "String" },
    { name = "roboshop.dev.user.mongo_url", value = "mongodb://mongodb-dev.devopsbjr.online:27017/users", type = "String" },
    { name = "roboshop.dev.mysql.username", value = "roboshop", type = "String" },
    { name = "roboshop.dev.rabbitmq.amqp_user", value = "roboshop", type = "String" },
    { name = "roboshop.dev.docdb.username", value = "roboshop", type = "String" },
    { name = "roboshop.dev.user.docdb_endpoint", value = "docdb-dev.cluster-cajpnbnycbmh.us-east-1.docdb.amazonaws.com", type = "String" },
    { name = "roboshop.dev.catalogue.docdb_endpoint", value = "docdb-dev.cluster-cajpnbnycbmh.us-east-1.docdb.amazonaws.com", type = "String" },
    { name = "roboshop.dev.catalogue.mongo_url", value = "mongodb://roboshop:roboshop123@docdb-dev.cluster-cajpnbnycbmh.us-east-1.docdb.amazonaws.com:27017/catalogue?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "SecureString" },

    { name = "roboshop.dev.user.mongo_url", value = "mongodb://roboshop:roboshop123@docdb-dev.cluster-cajpnbnycbmh.us-east-1.docdb.amazonaws.com:27017/users?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "SecureString" },
    { name = "roboshop.dev.mysql.endpoint", value = "rds-dev.cluster-cajpnbnycbmh.us-east-1.rds.amazonaws.com", type = "String" },
    { name = "roboshop.dev.shipping.db_host", value = "rds-dev.cluster-cajpnbnycbmh.us-east-1.rds.amazonaws.com", type = "String" },
    { name = "roboshop.dev.user.redis_host", value = "elasticache-dev-instance.dfomof.0001.use1.cache.amazonaws.com", type = "String" },

    # usally passwords are not allowed strore i github. need to create mannually in aws
    { name = "roboshop.dev.payment.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.rabbitmq.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.mysql.password", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.docdb.password", value = "roboshop123", type = "SecureString" },

  ]
}
