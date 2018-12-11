resource "aws_s3_bucket" "this" {
  bucket = "${var.s3_bucket_name}"
  acl    = "${var.s3_bucket_acl}"
  region = "${var.region}"

  versioning {
    enabled = "${var.versioning_enabled}"
  }

  tags {
    Name        = "${var.s3_bucket_name}"
    Environment = "${var.environment}"
    Project     = "${var.project}"
  }
}
