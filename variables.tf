################################################################################
#                              Terraform Variables                             #
################################################################################

variable vpc_name {
  type        = string
  description = "Name of VPC"
  default     = "advanced-terraform"
}

variable vpc_cidr_block {
  type        = string
  description = "CIDR block of VPC"
  default     = "172.16.0.0/16"
}

variable gw_name {
  type        = string
  description = "Name of GW"
  default     = "advanced-terraform-gw"
}

variable subnet_name {
  type        = string
  description = "Name of Subnet"
  default     = "subnet_01"
}

variable subnet_cidr_block {
  type        = string
  description = "CIDR block of subnet"
  default     = "172.16.1.0/24"
}

variable availability_zone {
  type        = string
  description = "Availability zone of the subnet"
  default     = "us-east-1a"
}

variable instance_name {
  type        = string
  description = "Name of the ec2 instance"
  default     = "app-server-01"
}

variable instance_ami {
  type        = string
  description = "Ami of the ec2 instance"
  default     = "ami-0715c1897453cabd1"
}

variable instance_type {
  type        = string
  description = "Type of the ec2 instance"
  default     = "t2.micro"
}

variable key_name {
  type        = string
  description = "Name the of the key name"
  default     = "linkedin-learning-key"
}

################################################################################
