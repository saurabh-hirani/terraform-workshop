terraform {
  required_version = ">= 0.9"
}

provider "aws" {}

variable "userid" {}

variable "workshop_tag" {
  default = "tf-workshop"
}

resource "aws_s3_bucket" "vpc" {
  bucket = "${var.userid}-${var.workshop_tag}-vpc"

  tags {
    Name = "${var.userid}-${var.workshop_tag}-vpc"
  }

  versioning {
    enabled = true
  }
}

resource "aws_s3_bucket" "public_subnet" {
  bucket = "${var.userid}-${var.workshop_tag}-public-subnet"

  tags {
    Name = "${var.userid}-${var.workshop_tag}-public-subnet"
    vpc  = "${aws_s3_bucket.vpc.id}"
  }

  versioning {
    enabled = true
  }
}

resource "aws_s3_bucket" "private_subnet" {
  bucket = "${var.userid}-${var.workshop_tag}-private-subnet"

  tags {
    Name = "${var.userid}-${var.workshop_tag}-private-subnet"
    vpc  = "${aws_s3_bucket.vpc.id}"
  }

  versioning {
    enabled = true
  }
}

resource "aws_s3_bucket" "public_security_group" {
  bucket = "${var.userid}-${var.workshop_tag}-public-security-group"

  tags {
    Name      = "${var.userid}-${var.workshop_tag}-public-security-group"
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
  bucket = "${var.userid}-${var.workshop_tag}-private-security-group"

  tags {
    Name                  = "${var.userid}-${var.workshop_tag}-private-security-group"
    vpc                   = "${aws_s3_bucket.vpc.id}"
    from_port             = 443
    to_port               = 443
    source_security_group = "${aws_s3_bucket.web_elb.id}"
  }

  versioning {
    enabled = true
  }
}

resource "aws_s3_bucket" "web_elb" {
  bucket = "${var.userid}-${var.workshop_tag}-web-elb"

  tags {
    Name      = "${var.userid}-${var.workshop_tag}-web-elb"
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

resource "aws_s3_bucket" "web_instance_1" {
  bucket = "${var.userid}-${var.workshop_tag}-web-instance-1"

  tags {
    Name           = "${var.userid}-${var.workshop_tag}-web-instance-1"
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
  bucket = "${var.userid}-${var.workshop_tag}-web-instance-2"

  tags {
    Name           = "${var.userid}-${var.workshop_tag}-web-instance-2"
    vpc            = "${aws_s3_bucket.vpc.id}"
    subnet         = "${aws_s3_bucket.private_subnet.id}"
    elb            = "${aws_s3_bucket.web_elb.id}"
    security_group = "${aws_s3_bucket.private_security_group.id}"
  }

  versioning {
    enabled = false
  }
}

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
