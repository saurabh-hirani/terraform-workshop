resource "aws_s3_bucket" "public_subnet" {
  bucket = "${var.userid}-${var.workshop_tag}-${var.env}-public-subnet"

  tags {
    Name = "${var.userid}-${var.workshop_tag}-${var.env}-public-subnet"
    vpc  = "${aws_s3_bucket.vpc.id}"
  }

  versioning {
    enabled = true
  }
}

resource "aws_s3_bucket" "private_subnet" {
  bucket = "${var.userid}-${var.workshop_tag}-${var.env}-private-subnet"

  tags {
    Name = "${var.userid}-${var.workshop_tag}-${var.env}-private-subnet"
    vpc  = "${aws_s3_bucket.vpc.id}"
  }

  versioning {
    enabled = true
  }
}
