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
    { name = "roboshop.dev.frontend.catalogue_url", value = "http://catalogue-dev.devopsbjr.online/", type = "String" },
    { name = "roboshop.dev.frontend.user_url", value = "http://user-dev.devopsbjr.online/", type = "String" },
    { name = "roboshop.dev.frontend.cart_url", value = "http://cart-dev.devopsbjr.online/", type = "String" },
    { name = "roboshop.dev.frontend.payment_url", value = "http://payment-dev.devopsbjr.online/", type = "String" },
    { name = "roboshop.dev.frontend.shipping_url", value = "http://shipping-dev.devopsbjr.online/", type = "String" },

    { name = "roboshop.dev.cart.redis_host", value = "elasticache-dev.dfomof.clustercfg.use1.cache.amazonaws.com", type = "String" },
    { name = "roboshop.dev.cart.catalogue_host", value = "catalogue-dev.devopsbjr.online", type = "String" },
    { name = "roboshop.dev.cart.catalogue_port", value = "80", type = "String" },

    { name = "roboshop.dev.catalogue.mongo", value = "true", type = "String" },

    { name = "roboshop.dev.payment.cart_host", value = "cart-dev.devopsbjr.online", type = "String" },
    { name = "roboshop.dev.payment.cart_port", value = "80", type = "String" },
    { name = "roboshop.dev.payment.user_host", value = "user-dev.devopsbjr.online", type = "String" },
    { name = "roboshop.dev.payment.user_port", value = "80", type = "String" },
    { name = "roboshop.dev.payment.amqp_host", value = "rabbitmq-dev.devopsbjr.online", type = "String" },
    { name = "roboshop.dev.payment.amqp_user", value = "roboshop", type = "String" },

    { name = "roboshop.dev.shipping.cart_endpoint", value = "cart-dev.devopsbjr.online:80", type = "String" },
    { name = "roboshop.dev.shipping.db_host", value = "rds-dev.cluster-cajpnbnycbmh.us-east-1.rds.amazonaws.com", type = "String" },
    { name = "roboshop.dev.user.mongo", value = "true", type = "String" },
    { name = "roboshop.dev.user.redis_host", value = "elasticache-dev.dfomof.clustercfg.use1.cache.amazonaws.com", type = "String" },

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








    { name = "roboshop.prod.frontend.catalogue_url", value = "http://catalogue-prod.devopsbjr.online/", type = "String" },
    { name = "roboshop.prod.frontend.user_url", value = "http://user-prod.devopsbjr.online/", type = "String" },
    { name = "roboshop.prod.frontend.cart_url", value = "http://cart-prod.devopsbjr.online/", type = "String" },
    { name = "roboshop.prod.frontend.payment_url", value = "http://payment-prod.devopsbjr.online/", type = "String" },
    { name = "roboshop.prod.frontend.shipping_url", value = "http://shipping-prod.devopsbjr.online/", type = "String" },

    { name = "roboshop.prod.cart.redis_host", value = "elasticache-prod-instance.dfomof.0001.use1.cache.amazonaws.com", type = "String" },
    { name = "roboshop.prod.cart.catalogue_host", value = "catalogue-prod.devopsbjr.online", type = "String" },
    { name = "roboshop.prod.cart.catalogue_port", value = "80", type = "String" },

    { name = "roboshop.prod.catalogue.mongo", value = "true", type = "String" },
    { name = "roboshop.prod.payment.cart_host", value = "cart-prod.devopsbjr.online", type = "String" },
    { name = "roboshop.prod.payment.cart_port", value = "80", type = "String" },

    { name = "roboshop.prod.payment.user_host", value = "user-prod.devopsbjr.online", type = "String" },
    { name = "roboshop.prod.payment.user_port", value = "80", type = "String" },
    { name = "roboshop.prod.payment.amqp_host", value = "rabbitmq-prod.devopsbjr.online", type = "String" },
    { name = "roboshop.prod.payment.amqp_user", value = "roboshop", type = "String" },

    { name = "roboshop.prod.shipping.cart_endpoint", value = "cart-prod.devopsbjr.online:80", type = "String" },
    { name = "roboshop.prod.shipping.db_host", value = "rds-prod.cluster-cajpnbnycbmh.us-east-1.rds.amazonaws.com", type = "String" },

    { name = "roboshop.prod.user.mongo", value = "true", type = "String" },
    { name = "roboshop.prod.user.redis_host", value = "elasticache-prod-instance.dfomof.0001.use1.cache.amazonaws.com", type = "String" },
    { name = "roboshop.prod.mysql.username", value = "roboshop", type = "String" },
    { name = "roboshop.prod.docdb.username", value = "roboshop", type = "String" },
    { name = "roboshop.prod.rabbitmq.amqp_user", value = "roboshop", type = "String" },
    { name = "roboshop.prod.mysql.endpoint", value = "rds-prod.cluster-cajpnbnycbmh.us-east-1.rds.amazonaws.com", type = "String" },

    ### Passwords will be never part of git repos, Usually in organizations we create them nanually. Meaning whom ever have access they will provision these secrets in parameter store.
    { name = "roboshop.prod.payment.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.prod.rabbitmq.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.prod.mysql.password", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.prod.docdb.password", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.prod.catalogue.mongo_url", value = "mongodb://roboshop:roboshop123@docdb-prod.cluster-cajpnbnycbmh.us-east-1.docdb.amazonaws.com:27017/catalogue?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "SecureString" },
    { name = "roboshop.prod.catalogue.docdb_endpoint", value = "docdb-prod.cluster-cajpnbnycbmh.us-east-1.docdb.amazonaws.com", type = "String" },
    { name = "roboshop.prod.user.mongo_url", value = "mongodb://roboshop:roboshop123@docdb-prod.cluster-cajpnbnycbmh.us-east-1.docdb.amazonaws.com:27017/users?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "SecureString" },
    { name = "roboshop.prod.user.docdb_endpoint", value = "docdb-prod.cluster-cajpnbnycbmh.us-east-1.docdb.amazonaws.com", type = "String" },

    { name = "roboshop.nexus.username", value = "admin", type = "SecureString" },
    { name = "roboshop.nexus.password", value = "admin123", type = "SecureString" },

    ## App Versions
    { name = "roboshop.prod.payment.app_version", value = "1.0.0", type = "String" },
    { name = "roboshop.prod.shipping.app_version", value = "1.0.0", type = "String" },
    { name = "roboshop.prod.cart.app_version", value = "1.0.0", type = "String" },
    { name = "roboshop.prod.user.app_version", value = "1.0.1", type = "String" },
    { name = "roboshop.prod.catalogue.app_version", value = "1.0.0", type = "String" },
    { name = "roboshop.prod.frontend.app_version", value = "1.0.0", type = "String" },
  ]
}
