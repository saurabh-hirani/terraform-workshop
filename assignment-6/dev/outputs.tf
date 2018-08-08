output "vpc" {
  value = "${module.infra.vpc}"
}

output "public_subnet" {
  value = "${module.infra.public_subnet}"
}

output "private_subnet" {
  value = "${module.infra.private_subnet}"
}

output "web_elb" {
  value = "${module.infra.web_elb}"
}

output "web_instances" {
  value = "${module.infra.web_instances}"
}
