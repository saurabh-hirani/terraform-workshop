resource "aws_s3_bucket" "vpc" {
  bucket = "${var.userid}-${var.workshop_tag}-${var.env}-vpc"

  tags {
    Name = "${var.userid}-${var.workshop_tag}-${var.env}-vpc"
  }

  versioning {
    enabled = true
  }
}
