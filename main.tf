locals {
  resource_delim = "-"
  resource_prefix = join(
    local.resource_delim,
    [
      var.project,
      var.username
    ]
  )
}

resource "aws_s3_bucket" "test" {
  bucket = join(local.resource_delim, [local.resource_prefix, "storage"])
}
# Block Public Access
resource "aws_s3_bucket_public_access_block" "test" {
  bucket = aws_s3_bucket.test.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

module "sub" {
  source = "module"
  secret = var.secret
  value_wo_version = var.value_wo_version
}