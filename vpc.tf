# Internet VPC
resource "aws_vpc" "Sandbox_vpc" {
  cidr_block           = "10.78.0.0/16"
  instance_tenancy     = "default"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"
  enable_classiclink   = "false"
  tags = {
    Name = "Sandbox_vpc"
  }
}

# Subnets
resource "aws_subnet" "Sandbox_vpc-public-1" {
  vpc_id                  = aws_vpc.Sandbox_vpc.id
  cidr_block              = "10.78.23.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "us-east-1a"

  tags = {
    Name = "Sandbox_vpc-public-1"
  }
}

resource "aws_subnet" "Sandbox_vpc-public-2" {
  vpc_id                  = aws_vpc.Sandbox_vpc.id
  cidr_block              = "10.78.24.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "us-east-1b"

  tags = {
    Name = "Sandbox_vpc-public-2"
  }
}

resource "aws_subnet" "Sandbox_vpc-public-3" {
  vpc_id                  = aws_vpc.Sandbox_vpc.id
  cidr_block              = "10.78.25.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "us-east-1c"

  tags = {
    Name = "Sandbox_vpc-public-3"
  }
}

resource "aws_subnet" "Sandbox_vpc-private-1" {
  vpc_id                  = aws_vpc.Sandbox_vpc.id
  cidr_block              = "10.78.26.0/24"
  map_public_ip_on_launch = "false"
  availability_zone       = "us-east-1a"

  tags = {
    Name = "Sandbox_vpc-private-1"
  }
}

resource "aws_subnet" "Sandbox_vpc-private-2" {
  vpc_id                  = aws_vpc.Sandbox_vpc.id
  cidr_block              = "10.78.27.0/24"
  map_public_ip_on_launch = "false"
  availability_zone       = "us-east-1b"

  tags = {
    Name = "Sandbox_vpc-private-2"
  }
}

resource "aws_subnet" "Sandbox_vpc-private-3" {
  vpc_id                  = aws_vpc.Sandbox_vpc.id
  cidr_block              = "10.78.28.0/24"
  map_public_ip_on_launch = "false"
  availability_zone       = "us-east-1c"

  tags = {
    Name = "Sandbox_vpc-private-3"
  }
}

resource "aws_subnet" "Sandbox_vpc-database-1" {
  vpc_id                  = aws_vpc.Sandbox_vpc.id
  cidr_block              = "10.78.29.0/24"
  map_public_ip_on_launch = "false"
  availability_zone       = "us-east-1a"

  tags = {
    Name = "Sandbox_vpc-database-1"
  }
}

resource "aws_subnet" "Sandbox_vpc-database-2" {
  vpc_id                  = aws_vpc.Sandbox_vpc.id
  cidr_block              = "10.78.30.0/24"
  map_public_ip_on_launch = "false"
  availability_zone       = "us-east-1b"

  tags = {
    Name = "Sandbox_vpc-database-2"
  }
}

resource "aws_subnet" "Sandbox_vpc-database-3" {
  vpc_id                  = aws_vpc.Sandbox_vpc.id
  cidr_block              = "10.78.31.0/24"
  map_public_ip_on_launch = "false"
  availability_zone       = "us-east-1c"

  tags = {
    Name = "Sandbox_vpc-database-3"
  }
}


