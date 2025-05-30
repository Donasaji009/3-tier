variable "subnet_ids" {
  type = list(string)
}

variable "db_username" {
  type = string
}

variable "db_password" {
  type = string
}

variable "db_subnet_group_name" {
  type        = string
  description = "Name for the DB subnet group, no spaces, lowercase, hyphens only"
  default     ="3tier-db-subnetgroup-001"
}
