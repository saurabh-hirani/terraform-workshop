resource "aws_s3_bucket" "web_instance_1" {
  bucket = "${var.userid}-${var.workshop_tag}-${var.env}-web-instance-1"

  tags {
    Name           = "${var.userid}-${var.workshop_tag}-${var.env}-web-instance-1"
    vpc            = "${aws_s3_bucket.vpc.id}"
    subnet         = "${aws_s3_bucket.private_subnet.id}"
    elb            = "${aws_s3_bucket.web_elb.id}"
    security_group = "${aws_s3_bucket.private_security_group.id}"
  }

  versioning {
    enabled = true
  }
}

resource "aws_s3_bucket" "web_instance_2" {
  bucket = "${var.userid}-${var.workshop_tag}-${var.env}-web-instance-2"

  tags {
    Name           = "${var.userid}-${var.workshop_tag}-${var.env}-web-instance-2"
    vpc            = "${aws_s3_bucket.vpc.id}"
    subnet         = "${aws_s3_bucket.private_subnet.id}"
    elb            = "${aws_s3_bucket.web_elb.id}"
    security_group = "${aws_s3_bucket.private_security_group.id}"
  }

  versioning {
    enabled = true
  }
}
