module "infra" {
  source       = "../terraform-workshop-module"
  env          = "${var.env}"
  userid       = "${var.userid}"
  workshop_tag = "${var.workshop_tag}"
}
