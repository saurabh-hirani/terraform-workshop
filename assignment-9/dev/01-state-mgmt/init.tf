data "aws_caller_identity" "current" {}

module "remote_state" {
  source                      = "git::https://github.com/saurabh-hirani/tf_state_mgmt?ref=v0.0.1"
  tf_bucket_name              = "${replace(var.tf_bucket_name, "_", "-")}"
  force_destroy_state_buckets = "true"
}
