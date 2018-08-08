output "vpc_id" {
  value = "${module.vpc.vpc_id}"
}

output "public_subnet_id" {
  value = "${module.vpc.public_subnet_id}"
}

output "private_subnet_id" {
  value = "${module.vpc.private_subnet_id}"
}
