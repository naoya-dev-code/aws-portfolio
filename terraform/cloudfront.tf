resource "aws_cloudfront_distribution" "portfolio" {
  enabled             = true
  default_root_object = "index.html"
  price_class         = "PriceClass_All"
  http_version        = "http2"
  is_ipv6_enabled     = true

  origin {
    domain_name              = "portfolio-naoya-s3.s3.ap-northeast-1.amazonaws.com"
    origin_id                = "portfolio-naoya-s3.s3.ap-northeast-1.amazonaws.com-mu9zbj8m926"
    origin_access_control_id = "E2BB7G85WYE2L2"
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

  web_acl_id = "arn:aws:wafv2:us-east-1:699475953900:global/webacl/CreatedByCloudFront-15b3d460/61a17307-6e2f-4493-99e6-6aab88ea4b76"

  tags = {
    Name = "aws-portfolio"
  }
}
