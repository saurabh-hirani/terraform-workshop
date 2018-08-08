output "vpc" {
  value = "${aws_s3_bucket.vpc.id}"
}

output "public_subnet" {
  value = "${aws_s3_bucket.public_subnet.id}"
}

output "private_subnet" {
  value = "${aws_s3_bucket.private_subnet.id}"
}

output "web_elb" {
  value = "${aws_s3_bucket.web_elb.id}"
}

output "web_instance_1" {
  value = "${aws_s3_bucket.web_instance_1.id}"
}

output "web_instance_2" {
  value = "${aws_s3_bucket.web_instance_2.id}"
}
