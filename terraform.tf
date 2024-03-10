# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {

  cloud {
    organization = "DevopsFiapSoat3-G35"
    workspaces {
      name = "postech-fase-3-db"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.20.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.5.1"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.4"
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.3.2"
    }

    postgresql = { # This line is what needs to change.
      source  = "cyrilgdn/postgresql"
      version = "1.15.0"
    }
  }

  required_version = "~> 1.3"
}