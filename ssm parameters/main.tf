resource "aws_ssm_parameter" "foo" {
  for_each = var.instances
  name  = each.key
  type  = each.value[value]
  value = each.value[type]
}

var "instances" {
    default = {
        catalogue = {
            value = "http://catalogue-dev.learnskill.fun:8080/"
            type  = "String"
        },
        user = {
            value = "http://user-dev.learnskill.fun:8080/"
            type  = "String"
        },
        cart = {
            value = "http://cart-dev.learnskill.fun:8080/"
            type  = "String"
        },
        shipping = {
            value = "http://shipping-dev.learnskill.fun:8080/"
            type  = "String"
        },
        payment = {
            value = "http://payment-dev.learnskill.fun:8080/"
            type  = "String"
        }
    }
}