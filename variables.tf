variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "Public subnet CIDR"
  type        = string
  default     = "10.0.1.0/24"
}

variable "db_username" {
  description = "Database username"
  type        = string
  default     = "adminuser"
}

variable "db_password" {
  description = "Database password"
  type        = string
  default     = "ComplexPass123!"
}

variable "db_subnet_group_name" {
  description = "Unique name for DB subnet group"
  type        = string
  default     = "3tier-db-subnetgroup-001"
}
