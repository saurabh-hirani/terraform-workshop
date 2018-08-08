resource "aws_s3_bucket" "public_security_group" {
  bucket = "${var.userid}-${var.workshop_tag}-${var.env}-public-security-group"

  tags {
    Name      = "${var.userid}-${var.workshop_tag}-${var.env}-public-security-group"
    vpc       = "${aws_s3_bucket.vpc.id}"
    from_port = 443
    to_port   = 443
    cidr      = "0.0.0.0/0"
  }

  versioning {
    enabled = true
  }
}

resource "aws_s3_bucket" "private_security_group" {
  bucket = "${var.userid}-${var.workshop_tag}-${var.env}-private-security-group"

  tags {
    Name                  = "${var.userid}-${var.workshop_tag}-${var.env}-private-security-group"
    vpc                   = "${aws_s3_bucket.vpc.id}"
    from_port             = 443
    to_port               = 443
    source_security_group = "${aws_s3_bucket.web_elb.id}"
  }

  versioning {
    enabled = true
  }
}
