terraform {
  required_providers {
    huaweicloud = {
      source  = "huaweicloud/huaweicloud"
      version = ">= 1.60.1"
    }
  }
}

provider "huaweicloud" {
  region     = "af-south-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

