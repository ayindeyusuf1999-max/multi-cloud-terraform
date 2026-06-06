terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

provider "azurerm" {
  features {}
}

provider "google" {
  project = var.gcp_project_id
  region  = "us-central1"
}

# AWS VPC
module "aws_vpc" {
  source = "../../modules/aws-vpc"

  vpc_name           = "dev-vpc"
  cidr_block         = "10.0.0.0/16"
  public_subnets     = ["10.0.1.0/24", "10.0.2.0/24"]
  availability_zones = ["us-east-1a", "us-east-1b"]
  environment        = "dev"
}

# Azure VNet
module "azure_vnet" {
  source = "../../modules/azure-vnet"

  vnet_name           = "dev-vnet"
  resource_group_name = "dev-rg"
  location            = "East US"
  address_space       = "10.1.0.0/16"
  subnets             = ["10.1.1.0/24", "10.1.2.0/24"]
  environment         = "dev"
}

# GCP Network
module "gcp_network" {
  source = "../../modules/gcp-network"

  network_name = "dev-network"
  project_id   = var.gcp_project_id
  region       = "us-central1"
  subnets      = ["10.2.1.0/24", "10.2.2.0/24"]
  environment  = "dev"
}
