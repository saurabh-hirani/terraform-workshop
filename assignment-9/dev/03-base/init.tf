terraform {
  required_version = ">= 0.9"
  backend          "s3"             {}
}

provider "aws" {}
