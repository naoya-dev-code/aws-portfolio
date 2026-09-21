resource "aws_cloudfront_origin_access_control" "portfolio" {
  name                              = "oac-portfolio-naoya-s3.s3.ap-northeast-1.amazonaws.c-mu9zc3g7kcl"
  description                       = "Created by CloudFront"
  origin_access_control_origin_type = "s3"
  signing_behavior                  = "always"
  signing_protocol                  = "sigv4"
}
