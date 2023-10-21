module "s3_bucket" {
  source = "./s3-module"
  bucket             = "" # Bucket Name must be unique
  versioning_enabled = true
  acl                = "" # Private or Public
}