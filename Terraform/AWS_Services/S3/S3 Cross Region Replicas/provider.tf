terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.45.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  access_key = "AKIA3GDLWSNWM346FOGV"
  secret_key = "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"
}

provider "aws" {
  alias  = "des_region"
  region = "us-east-2"
}
