# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "region" {
  default     = "us-east-1"
  description = "AWS region"
}

variable "POSTGRES_DB_PASSWORD" {
  description = "RDS root user password"
  sensitive   = true
}