output "s3_bucket_name" {
  description = "Name of the S3 bucket hosting the portfolio"
  value       = aws_s3_bucket.portfolio.bucket
}

output "cloudfront_distribution_id" {
  description = "CloudFront distribution ID"
  value       = aws_cloudfront_distribution.portfolio.id
}

output "cloudfront_domain_name" {
  description = "CloudFront domain name for the portfolio"
  value       = aws_cloudfront_distribution.portfolio.domain_name
}

output "github_actions_role_arn" {
  description = "IAM role ARN used by GitHub Actions"
  value       = aws_iam_role.github_actions.arn
}
