module "app" {
  source            = "git::https://github.com/saurabh-hirani/terraform-workshop-module//app?ref=v0.1.0"
  env               = "${var.env}"
  userid            = "${var.userid}"
  workshop_tag      = "${var.workshop_tag}"
  vpc_id            = "${data.terraform_remote_state.vpc.vpc_id}"
  private_subnet_id = "${data.terraform_remote_state.vpc.private_subnet_id}"
  web_elb_id        = "${data.terraform_remote_state.base.web_elb_id}"
  security_group_id = "${data.terraform_remote_state.base.private_security_group_id}"
}
