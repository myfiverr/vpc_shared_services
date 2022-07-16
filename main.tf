/*==== The VPC ======*/
resource "aws_vpc" "vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name         = var.vpc_name
    Owner        = var.owner
    Project_name = var.project_name
    Environment  = var.environment
  }
}

/*==== AZ1 Subnet ======*/

resource "aws_subnet" "az1_subnet" {
  for_each                = var.subnet_details
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = each.value.cidr_block
  availability_zone       = each.value.availability_zone
  map_public_ip_on_launch = each.value.map_public_ip
  tags = {
    Name         = each.value.subnet_name
    Owner        = var.owner
    project_name = var.project_name
    environment  = var.environment
  }
}

/*==== Transit Gateway ====*/

resource "aws_ec2_transit_gateway" "transit_gateway" {
  description = "Shared Services Transit Gateway"
}

/*==== Transit Gateway - VPC Attachment ====*/
data "aws_subnets" "subnet_ids" {
  filter {
    name   = "vpc-id"
    values = [aws_vpc.vpc.id]
  }
}

resource "aws_ec2_transit_gateway_vpc_attachment" "tgw_attach" {  
  subnet_ids         = tolist(data.aws_subnets.subnet_ids.ids)
  transit_gateway_id = aws_ec2_transit_gateway.transit_gateway.id
  vpc_id             = aws_vpc.vpc.id
  ipv6_support       = "disable"
  dns_support        = "enable"
  transit_gateway_default_route_table_association = false
  transit_gateway_default_route_table_propagation = false
  tags = {
    Name         = var.vpc_name
    Owner        = var.owner
    Project_name = var.project_name
    Environment  = var.environment
  }
}

resource "aws_vpc_ipam" "main" {
  description = "My IPAM"
  operating_regions {
    region_name = data.aws_region.current.name
  }

  tags = {
    Owner        = var.owner
    Project_name = var.project_name
    Environment  = var.environment
  }
}
