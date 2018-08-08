module "vpc" {
  source       = "git::https://github.com/saurabh-hirani/terraform-workshop-module//vpc?ref=v0.1.0"
  env          = "${var.env}"
  userid       = "${var.userid}"
  workshop_tag = "${var.workshop_tag}"
}
