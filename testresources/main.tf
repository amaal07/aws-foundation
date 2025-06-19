resource "aws_s3_bucket" "example" {
  bucket = "testbucketamal"
  force_destroy = false
  object_lock_enabled = false

  tags = {
    Name        = "testbucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_accelerate_configuration" "example" {
    bucket = aws_s3_bucket.example.id
    status = "Enabled"
  
}

resource "aws_s3_bucket_ownership_controls" "example" {
    bucket = aws_s3_bucket.example.id
    rule {
      object_ownership = "BucketOwnerPreferred"
    }
  
}

resource "aws_s3_bucket_acl" "example" {
  depends_on = [ aws_s3_bucket_ownership_controls.example ]

  bucket = aws_s3_bucket.example.id
  acl = "private"
}

resource "aws_s3_bucket_cors_configuration" "example" {
  bucket = aws_s3_bucket.example.id

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["PUT", "POST"]
    allowed_origins = ["https://s3-website-test.hashicorp.com"]
    expose_headers = ["ETag"]
    max_age_seconds = 3000
  }

  cors_rule {
    allowed_methods = ["GET"]
    allowed_origins = ["*"]
  }
}

resource "aws_s3_bucket_intelligent_tiering_configuration" "example" {
  bucket = aws_s3_bucket.example.id
  name = "EntireBucket"

  tiering {
    access_tier = "DEEP_ARCHIVE_ACCESS"
    days = 180
  }
  tiering {
    access_tier = "ARCHIVE_ACCESS"
    days = 125
  }
}