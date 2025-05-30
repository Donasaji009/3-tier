resource "aws_db_subnet_group" "default" {
  name       = trimspace(var.db_subnet_group_name)
  subnet_ids = var.subnet_ids

  tags = {
    Name = trimspace(var.db_subnet_group_name)
  }
}

resource "aws_db_instance" "default" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t2.micro"
  username             = var.db_username
  password             = var.db_password
  db_subnet_group_name = aws_db_subnet_group.default.name
  publicly_accessible  = false
  skip_final_snapshot  = true

  tags = {
    Name ="3tier-db-instance"
  }
}

output "db_endpoint" {
  value = aws_db_instance.default.endpoint
}
