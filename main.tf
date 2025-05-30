module "networking" {
  source             = "./modules/networking"
  vpc_cidr           = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
}

module "compute" {
  source    = "./modules/compute"
  subnet_id = module.networking.public_subnet_ids[0]
}

module "database" {
  source             = "./modules/database"
  subnet_ids         = module.networking.public_subnet_ids
  db_username        = "adminuser"
  db_password        = "ComplexPass123!"
  db_subnet_group_name ="3tier-db-subnetgroup-001"  
}
