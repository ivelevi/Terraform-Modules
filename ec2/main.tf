module "ec2_instance" {
  source = "./ec2-module"
  ami                     = "" #Your AMI here, note that AMI IDs differ between regions
  instance_type           = ""
  key_name                = ""
  subnet_id               = ""
  vpc_security_group_ids  = [""]
  tags = {
    Key = "Value"
  }
}