data "aws_caller_identity" "current" {}

resource "random_string" "rand" {
  length  = 3
  special = false
  upper   = false
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket        = "bucket-${random_string.rand.result}-${var.appname}-${var.env}"
  force_destroy = true
}

resource "aws_s3_bucket_lifecycle_configuration" "s3_bucket_lifecycle" {
  rule {
    id      = "delete-objects-rule"
    status  = "Enabled"

    transition {
      days          = 30
      storage_class = "INTELLIGENT_TIERING"
    }

    transition {
      days          = 60
      storage_class = "GLACIER"
    }

    expiration {
      days = 90
    }
  }

  bucket = aws_s3_bucket.s3_bucket.id
}
