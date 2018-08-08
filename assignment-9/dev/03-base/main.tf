module "base" {
  source           = "git::https://github.com/saurabh-hirani/terraform-workshop-module//base?ref=v0.1.0"
  env              = "${var.env}"
  userid           = "${var.userid}"
  workshop_tag     = "${var.workshop_tag}"
  vpc_id           = "${data.terraform_remote_state.vpc.vpc_id}"
  public_subnet_id = "${data.terraform_remote_state.vpc.public_subnet_id}"
  https_port       = "${var.https_port}"
}
