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

output "web_instance_1" {
  value = "${module.infra.web_instance_1}"
}

output "web_instance_2" {
  value = "${module.infra.web_instance_2}"
}
