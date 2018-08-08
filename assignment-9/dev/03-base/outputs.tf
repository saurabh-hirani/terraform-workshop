output "web_elb_id" {
  value = "${module.base.web_elb_id}"
}

output "public_security_group_id" {
  value = "${module.base.public_security_group_id}"
}

output "private_security_group_id" {
  value = "${module.base.private_security_group_id}"
}
