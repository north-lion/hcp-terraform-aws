# Ref: https://developer.hashicorp.com/terraform/tutorials/cloud-get-started/cloud-workspace-create
# Ref: https://github.com/hashicorp-guides/terraform-stacks-identity-tokens/tree/main
terraform {

  cloud {
    organization = "north-lion-terraform-org" # Organization name

    workspaces {
      name = "hpc-terraform-aws" # Workspace name: Creates the HCP Terraform workspace in this name, if it does not already exist.
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.31.0"
    }
  }

  required_version = "~> 1.2"
}
