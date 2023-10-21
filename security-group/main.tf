module "security_group" {
  source = "sg-module"

  name        = ""
  description = ""
  vpc_id      = ""
  # Declare the ingress e egress rules in the module, this will be fixed in the future
  tags = {
    Key = "Value"
  }
}