data "aws_ami" "amazon" { # Data Sources
  most_recent = true
  filter {
    name   = "name"
    values = ["al2023-ami-2023.4.20240319.1-kernel-6.1-x86_64"] #use AMI Name
  }
  owners = ["amazon"]
}

data "aws_availability_zones" "available" {
  state = "available"
}

variable "aws_region" {
  description = "creating a variable to hold the region value name"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr_block" {
  description = "vpc cidr"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr_blocks" {
  description = "The CIDR blocks for the public subnets"
  type        = list(string)
  default     = ["10.0.32.0/19", "10.0.64.0/19"]
}

variable "private_subnet_cidr_blocks" {
  description = "The CIDR blocks for the private subnets"
  type        = list(string)
  default     = ["10.0.96.0/19", "10.0.128.0/19"]
}

variable "web_sg" {
  description = "The name of the sg"
  default     = "web_sg"
}

variable "alb_sg" {
  description = "The name of the sg"
  default     = "alb_sg"
}

variable "keypair_name" {
  description = "The name of the keypair to use or create"
  default     = "refreshkeypair"
}


variable "availability_zones" {
  description = "List of AZs to use"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "instance_type" {
  description = "creating a variable to hold the instance type"
  type        = string
  default     = "t2.micro"
}