module "infra" {
  source         = "git::https://github.com/saurabh-hirani/terraform-workshop-module//?ref=v0.0.2"
  env            = "${var.env}"
  userid         = "${var.userid}"
  workshop_tag   = "${var.workshop_tag}"
  instance_count = 3
}
