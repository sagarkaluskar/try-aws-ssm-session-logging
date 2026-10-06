terraform {
  required_version = ">= 1.3.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_ssm_parameter" "this" {
  name  = "/${var.name_prefix}/example"
  type  = "SecureString"
  value = var.parameter_value
}
