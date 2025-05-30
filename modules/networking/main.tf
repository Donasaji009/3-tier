resource "aws_vpc" "this" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "3tier-vpc"
  }
}

resource "aws_subnet" "public" {
  count             = 2
  vpc_id            = aws_vpc.this.id
  cidr_block        = cidrsubnet(var.vpc_cidr, 8, count.index)  # Corrected line
  availability_zone = element(["us-east-1a", "us-east-1b"], count.index)

  tags = {
    Name = "3tier-public-subnet-${count.index + 1}"
  }
}

output "vpc_id" {
  value = aws_vpc.this.id
}

output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}
