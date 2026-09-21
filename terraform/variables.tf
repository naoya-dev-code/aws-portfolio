variable "aws_region" {
  description = "AWS region for the portfolio resources"
  type        = string
  default     = "ap-northeast-1"
}

variable "aws_profile" {
  description = "AWS CLI profile used by Terraform"
  type        = string
  default     = "naoya-sso"
}

variable "bucket_name" {
  description = "S3 bucket name for the portfolio website"
  type        = string
  default     = "portfolio-naoya-s3"
}
