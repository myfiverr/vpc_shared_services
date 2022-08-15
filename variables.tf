variable "region" {
  description = "The region to launch the host"
  default = "us-east-1"
}

variable "vpc_cidr" {
  description = "The CIDR block of the VPC"
  default = "10.78.0.0/16"
}

variable "vpc_name" {
  description = "The name tag for the VPC"
  default = "Shared"
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

variable aws_access_key {
  description = "AWS Access Key"
}

variable "aws_secret_key" {
  description = "AWS Secret Key"
}