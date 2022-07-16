###   Pull current user info

data "aws_caller_identity" "current" {}

# Pull current region
data "aws_region" "current" {}