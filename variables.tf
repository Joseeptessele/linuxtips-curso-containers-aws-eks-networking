variable "project_name" {
  type = string

}

variable "region" {
  type = string
}

variable "vpc_cidr" {
  type        = string
  description = "VPC principal CIDR"
}

variable "vpc_additional_cidrs" {
  type        = list(string)
  description = "VPC additional CIDR's list"
  default     = []
}

variable "public_subnets" {
  description = "VPC's public subnets"
  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string
  }))
}

variable "private_subnets" {
  description = "VPC's private subnets"
  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string
  }))
}