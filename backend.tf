################################################################################
#     Backend Type S3: https://www.terraform.io/docs/backends/types/s3.html    #
################################################################################

terraform {
  backend "s3" {
    bucket = "github-advanced-terraform-state"
    key    = "github-advanced-terraform-state/advanced-terraform-1b/production/terraform.tfstate"
    region = "us-east-1"
  }
}

################################################################################
