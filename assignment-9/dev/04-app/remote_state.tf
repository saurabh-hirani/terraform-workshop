data "terraform_remote_state" "vpc" {
  backend = "s3"

  config {
    bucket = "shirani-tf-workshop-assignment-8-dev-state"
    key    = "vpc.tfstate"
  }
}

data "terraform_remote_state" "base" {
  backend = "s3"

  config {
    bucket = "shirani-tf-workshop-assignment-8-dev-state"
    key    = "base.tfstate"
  }
}
