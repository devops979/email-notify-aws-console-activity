variables {
  region               = "us-east-1"
  cidr_block           = "10.0.0.0/16"
  environment          = "test"
  public_subnet_cidrs  = ["10.0.1.0/24"]
  private_subnet_cidrs = ["10.0.2.0/24"]
  availability_zones   = ["us-east-1a"]
  key_name             = "test-key"
  ami_id               = "ami-12345678"
  instance_type        = "t2.micro"
}

run "validate_inputs" {
  command = plan

  assert {
    condition     = can(regex("^ami-", var.ami_id))
    error_message = "AMI ID must start with 'ami-'"
  }

  assert {
    condition     = can(cidrhost(var.cidr_block, 0))
    error_message = "Invalid VPC CIDR block format"
  }

  assert {
    condition     = length(var.public_subnet_cidrs) == length(var.availability_zones)
    error_message = "Number of public subnets must match AZs"
  }
}



