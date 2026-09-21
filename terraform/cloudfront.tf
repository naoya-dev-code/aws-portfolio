resource "aws_cloudfront_distribution" "portfolio" {
  enabled             = true
  default_root_object = "index.html"
  price_class         = "PriceClass_All"
  http_version        = "http2"
  is_ipv6_enabled     = true

  origin {
    domain_name              = "portfolio-naoya-s3.s3.ap-northeast-1.amazonaws.com"
    origin_id                = "portfolio-naoya-s3.s3.ap-northeast-1.amazonaws.com-mu9zbj8m926"
    origin_access_control_id = aws_cloudfront_origin_access_control.portfolio.id
  }

  default_cache_behavior {
    target_origin_id       = "portfolio-naoya-s3.s3.ap-northeast-1.amazonaws.com-mu9zbj8m926"
    viewer_protocol_policy = "redirect-to-https"
    compress               = true
    cache_policy_id        = "658327ea-f89d-4fab-a63d-7e88639e58f6"

    allowed_methods = ["GET", "HEAD"]
    cached_methods  = ["GET", "HEAD"]
  }

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    cloudfront_default_certificate = true
  }

  web_acl_id = aws_wafv2_web_acl.portfolio.arn

  tags = {
    Name = "aws-portfolio"
  }
}
