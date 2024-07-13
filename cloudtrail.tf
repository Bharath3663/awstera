resource "aws_s3_bucket" "cloudtrail_logs" {
  bucket = var.bucket_name
  force_destroy = true
  acl    = "private"
}
