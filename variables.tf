variable "region" {
  description = "The region to launch the host"
}

variable "vpc_cidr" {
  description = "The CIDR block of the VPC"
}

variable "vpc_name" {
  description = "The name tag for the VPC"
}

variable "owner" {
  description = "The owner"
}

variable "project_name" {
  description = "The project name"
}

variable "environment" {
  description = "The environment name"
}

variable "subnet_details" {
  description = "The Subnet details"
}

variable aws_access_key {
  description = "AWS Access Key"
}

variable "aws_secret_key" {
  description = "AWS Secret Key"
}