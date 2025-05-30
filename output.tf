output "vpc_id" {
  value = module.networking.vpc_id
}

output "public_subnet_ids" {
  value = module.networking.public_subnet_ids
}

output "app_instance_public_ip" {
  value = module.compute.instance_public_ip
}

output "db_endpoint" {
  value = module.database.db_endpoint
}
