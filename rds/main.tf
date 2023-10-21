module "rds"  {
  source = "./module-rds"
  identifier                = "" # RDS Identifier
  allocated_storage         = 20 # Specify the storage size in GB
  storage_type              = "gp2" # General Purpose SSD
  engine                    = "" # Choose your engine
  engine_version            = "" # Change to your desired version
  instance_class            = "" # Change to your desired instance type
  username                  = "" # Change to your desired username
  password                  = "" # Change to your desired password
  parameter_group_name      = "" # Change to your desired parameter group


  tags = {
    Key = "Value"
  }
}
