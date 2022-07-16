/* AWS */
region = "us-east-1"


/* module networking */
vpc_cidr = "10.78.0.0/16"
vpc_name = "Shared-Services-VPC"

/* use-az1 */
subnet_details = {
  public1 = {
    subnet_name       = "Public_Subnet_1"
    cidr_block        = "10.78.23.0/24",
    availability_zone = "us-east-1a",
    map_public_ip     = true,
  },
  public2 = {
    subnet_name       = "Public_Subnet_2"
    cidr_block        = "10.78.24.0/24",
    availability_zone = "us-east-1b",
    map_public_ip     = true,
  },
  public3 = {
    subnet_name       = "Public_Subnet_3"
    cidr_block        = "10.78.25.0/24",
    availability_zone = "us-east-1c",
    map_public_ip     = true,
  },
  private1 = {
    subnet_name       = "Private_Subnet_1"
    cidr_block        = "10.78.26.0/24",
    availability_zone = "us-east-1a",
    map_public_ip     = false,
  },
  private2 = {
    subnet_name       = "Private_Subnet_2"
    cidr_block        = "10.78.27.0/24",
    availability_zone = "us-east-1b",
    map_public_ip     = false,
  },
  private3 = {
    subnet_name       = "Private_Subnet_3"
    cidr_block        = "10.78.28.0/24",
    availability_zone = "us-east-1c",
    map_public_ip     = false,
  },
  database1 = {
    subnet_name       = "D_Subnet_1",
    cidr_block        = "10.78.29.0/24",
    availability_zone = "us-east-1a",
    map_public_ip     = false,
  },
  database2 = {
    subnet_name       = "D_Subnet_2",
    cidr_block        = "10.78.30.0/24",
    availability_zone = "us-east-1b",
    map_public_ip     = false,
  },
  database3 = {
    subnet_name       = "D_Subnet_3",
    cidr_block        = "10.78.31.0/24"
    availability_zone = "us-east-1c",
    map_public_ip     = false,
  }
}

/* Tags */
owner        = "Canda Solutions"
project_name = "CANDA AWS"
environment  = "Shared-Services"