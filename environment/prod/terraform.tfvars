# BASIC INFO
project_name = "linuxtips-vpc"
region       = "us-east-1"

# VPC INFO
vpc_cidr = "10.0.0.0/16"
vpc_additional_cidrs = [
  "100.64.0.0/16"
]

# SUBNET INFO
public_subnets = [
  {
    name              = "linuxtips-public-1a"
    cidr              = "10.0.48.0/24"
    availability_zone = "us-east-1a"
  },
  {
    name              = "linuxtips-public-1b"
    cidr              = "10.0.49.0/24"
    availability_zone = "us-east-1b"
  },
  {
    name              = "linuxtips-public-1c"
    cidr              = "10.0.50.0/24"
    availability_zone = "us-east-1c"
  }
]

private_subnets = [
  # PRIVATE SUBNET
  {
    name              = "linuxtips-private-1a"
    cidr              = "10.0.0.0/20"
    availability_zone = "us-east-1a"
  },
  {
    name              = "linuxtips-private-1b"
    cidr              = "10.0.16.0/20"
    availability_zone = "us-east-1b"
  },
  {
    name              = "linuxtips-private-1c"
    cidr              = "10.0.32.0/20"
    availability_zone = "us-east-1c"
  },
  # PODS SUBNETS
  {
    name              = "linuxtips-pods-1a"
    cidr              = "100.64.0.0/18"
    availability_zone = "us-east-1a"
  },
  {
    name              = "linuxtips-pods-1b"
    cidr              = "100.64.64.0/18"
    availability_zone = "us-east-1b"
  },
  {
    name              = "linuxtips-pods-1c"
    cidr              = "100.64.128.0/18"
    availability_zone = "us-east-1c"
  },
]