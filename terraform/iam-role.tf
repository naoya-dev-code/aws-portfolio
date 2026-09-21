resource "aws_iam_role" "github_actions" {
  name                 = "GitHubActions-S3-Deploy"
  description          = "GitHub Actions-AWS Portfolio-S3"
  max_session_duration = 3600

  assume_role_policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Principal = {
          Federated = aws_iam_openid_connect_provider.github.arn
        }

        Action = "sts:AssumeRoleWithWebIdentity"

        Condition = {
          StringEquals = {
            "token.actions.githubusercontent.com:aud" = "sts.amazonaws.com"
          }

          StringLike = {
            "token.actions.githubusercontent.com:sub" = "repo:naoya-dev-code@331560908/aws-portfolio@1378120238:ref:refs/heads/main"
          }
        }
      }
    ]
  })
}
