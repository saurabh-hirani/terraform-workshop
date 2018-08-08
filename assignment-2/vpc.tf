resource "aws_s3_bucket" "vpc" {
  bucket = "${var.userid}-${var.workshop_tag}-vpc"

  tags {
    Name = "${var.userid}-${var.workshop_tag}-vpc"
  }

  versioning {
    enabled = true
  }
}
