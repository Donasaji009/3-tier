resource "aws_instance" "app" {
  ami           = "ami-0c02fb55956c7d316"  # Amazon Linux 2 AMI in us-east-1
  instance_type = "t2.micro"
  subnet_id     = var.subnet_id

  tags = {
    Name = "3tier-app-instance"
  }
}

output "instance_public_ip" {
  value = aws_instance.app.public_ip
}
