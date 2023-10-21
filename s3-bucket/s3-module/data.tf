data "aws_partition" "current" {}

data "aws_iam_policy_document" "empty" {}

## define the policy recommended by Security Norms to block requests from TLS 1.0 and 1.1
data "aws_iam_policy_document" "s3_tls_enforcement" {
  source_policy_documents = [data.aws_iam_policy_document.empty.json]
  override_policy_documents = [jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Sid" : "AddTLS1.0Restriction",
        "Effect" : "Deny",
        "Principal" : "*",
        "Action" : "*",
        "Resource" : "arn:${data.aws_partition.current.partition}:s3:::${aws_s3_bucket.bucket.id}/*",
        "Condition" : {
          "NumericEquals" : {
            "s3:TlsVersion" : "1.0"
          }
        }
      },
      {
        "Sid" : "AddTLS1.1Restriction",
        "Effect" : "Deny",
        "Principal" : "*",
        "Action" : "*",
        "Resource" : "arn:${data.aws_partition.current.partition}:s3:::${aws_s3_bucket.bucket.id}/*",
        "Condition" : {
          "NumericEquals" : {
            "s3:TlsVersion" : "1.1"
          }
        }
      },
      {
        "Sid" : "DenyHTTPAccess",
        "Effect" : "Deny",
        "Principal" : "*",
        "Action" : "*",
        "Resource" : [
          "arn:${data.aws_partition.current.partition}:s3:::${aws_s3_bucket.bucket.id}/*",
        ],
        "Condition" : {
          "Bool" : {
            "aws:SecureTransport" : "false"
          }
        }
      }
    ]
  })]
}

data "aws_iam_policy_document" "policy" {
  source_policy_documents = [data.aws_iam_policy_document.s3_tls_enforcement.json]

  override_policy_documents = var.policy == null ? [data.aws_iam_policy_document.empty.json] : [var.policy]
}
