locals {
  # BucketOwnerEnforced disables ACL, so when this is enabled, the var.acl parameter should be ignored
  private_access = var.object_ownership == "BucketOwnerEnforced" ? (var.private_access) : (var.acl == "private")
}

