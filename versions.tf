# Provider Block
terraform {
  required_version = "~> 1.6" # which means any version equal & above 1.6
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  # Update remote backend information
  # backend "remote" {
  #   hostname      = "app.terraform.io"
  #   organization  = "<YOUR-ORG-NAME>"  # Organization should already exists in Terraform Cloud

  #   workspaces {
  #     name = "<YOUR-WORKSPACE-NAME>"
  #     # Two cases:
  #     # Case-1: If workspace already exists, should not have any state files in states tab
  #     # Case-2: If workspace not exists, during migration it will get created
  #   }
  # }
}
# Provider Block
provider "aws" {
  region  = var.aws_region
}
/*
Note-1:  AWS Credentials Profile (profile = "default") configured on your local desktop terminal
$HOME/.aws/credentials
*/