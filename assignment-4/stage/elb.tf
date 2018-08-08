resource "aws_s3_bucket" "web_elb" {
  bucket = "${var.userid}-${var.workshop_tag}-${var.env}-web-elb"

  tags {
    Name      = "${var.userid}-${var.workshop_tag}-${var.env}-web-elb"
    vpc       = "${aws_s3_bucket.vpc.id}"
    from_port = 443
    to_port   = 443
    cidr      = "0.0.0.0/0"
    subnet    = "${aws_s3_bucket.public_subnet.id}"
  }

  versioning {
    enabled = true
  }
}
