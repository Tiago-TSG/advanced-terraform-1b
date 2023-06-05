################################################################################
#                            Terraform Resources (stanzas)                     #
################################################################################

resource "aws_vpc" "advanced_terraform" {
  cidr_block            = var.vpc_cidr_block

  enable_dns_support    = true
  enable_dns_hostnames  = true

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.advanced_terraform.id

  tags = {
    Name = var.gw_name
  }
}

resource "aws_route" "default_route" {
  route_table_id            = aws_vpc.advanced_terraform.main_route_table_id
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id                = aws_internet_gateway.gw.id
  depends_on                = [aws_internet_gateway.gw]
}

resource "aws_subnet" "subnet_01" {
  vpc_id                  = aws_vpc.advanced_terraform.id

  cidr_block        = var.subnet_cidr_block
  availability_zone = var.availability_zone
  
  map_public_ip_on_launch = true
  
  tags = {
    Name = var.subnet_name
  }
}

################################################################################

resource "aws_instance" "app_server" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  key_name      = var.key_name

  subnet_id     = aws_subnet.subnet_01.id
 
  tags = {
    Name = var.instance_name
  }
}

################################################################################
